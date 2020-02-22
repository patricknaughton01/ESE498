`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2020 03:36:25 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top#(parameter C_S_AXI_ADDR_WIDTH = 16, C_S_AXI_DATA_WIDTH = 32, INITIAL=32, DELAY=63, READ_MAX_ADDR='hFFF4, 
    REC_ADDR='hFFFC, FREQ_ADDR='hFFF8, VIRUS_ADDR='hFFF0, MEM_WIDTH=16, ABS_READ_MAX=10000, VIRUS_NUM_B=16, VIRUS_B_SIZE=512)(
    // Axi4Lite Bus
    input       S_AXI_ACLK,
    input       S_AXI_ARESETN,
    input       [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_AWADDR,
    input       S_AXI_AWVALID,
    output      S_AXI_AWREADY,
    input       [C_S_AXI_DATA_WIDTH-1:0] S_AXI_WDATA,
    input       [3:0] S_AXI_WSTRB,
    input       S_AXI_WVALID,
    output      S_AXI_WREADY,
    output      [1:0] S_AXI_BRESP,
    output      S_AXI_BVALID,
    input       S_AXI_BREADY,
    input       [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_ARADDR,
    input       S_AXI_ARVALID,
    output      S_AXI_ARREADY,
    output      [C_S_AXI_DATA_WIDTH-1:0] S_AXI_RDATA,
    output      [1:0] S_AXI_RRESP,
    output      S_AXI_RVALID,
    input       S_AXI_RREADY,
    output  reg trigger
);

wire [C_S_AXI_ADDR_WIDTH-1:0] wrAddr;
wire [C_S_AXI_DATA_WIDTH-1:0] wrData;
wire wr;
wire [C_S_AXI_ADDR_WIDTH-1:0] rdAddr;
reg  [C_S_AXI_DATA_WIDTH-1:0] rdData;
wire rd;

wire [DELAY-1:0] tdcOut;

reg[VIRUS_NUM_B-1:0] virusEnD, virusEnQ, virusMaskD, virusMaskQ;
reg virusFlagD, virusFlagQ;
wire [(VIRUS_NUM_B*VIRUS_B_SIZE)-1:0] virusOut;

Axi4LiteSupporter#(.C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH), .C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH))AxiSupporter1(
    // Simple Bus
    .wrAddr(wrAddr),                    // output   [C_S_AXI_ADDR_WIDTH-1:0]
    .wrData(wrData),                    // output   [C_S_AXI_DATA_WIDTH-1:0]
    .wr(wr),                            // output
    .rdAddr(rdAddr),                    // output   [C_S_AXI_ADDR_WIDTH-1:0]
    .rdData(rdData),                    // input    [C_S_AXI_ADDR_WIDTH-1:0]
    .rd(rd),                            // output   
    // Axi4Lite Bus
    .S_AXI_ACLK(S_AXI_ACLK),            // input
    .S_AXI_ARESETN(S_AXI_ARESETN),      // input
    .S_AXI_AWADDR(S_AXI_AWADDR),        // input    [C_S_AXI_ADDR_WIDTH-1:0]
    .S_AXI_AWVALID(S_AXI_AWVALID),      // input
    .S_AXI_AWREADY(S_AXI_AWREADY),      // output
    .S_AXI_WDATA(S_AXI_WDATA),          // input    [C_S_AXI_DATA_WIDTH-1:0]
    .S_AXI_WSTRB(S_AXI_WSTRB),          // input    [3:0]
    .S_AXI_WVALID(S_AXI_WVALID),        // input
    .S_AXI_WREADY(S_AXI_WREADY),        // output        
    .S_AXI_BRESP(S_AXI_BRESP),          // output   [1:0]
    .S_AXI_BVALID(S_AXI_BVALID),        // output
    .S_AXI_BREADY(S_AXI_BREADY),        // input
    .S_AXI_ARADDR(S_AXI_ARADDR),        // input    [C_S_AXI_ADDR_WIDTH-1:0]
    .S_AXI_ARVALID(S_AXI_ARVALID),      // input
    .S_AXI_ARREADY(S_AXI_ARREADY),      // output
    .S_AXI_RDATA(S_AXI_RDATA),          // output   [C_S_AXI_DATA_WIDTH-1:0]
    .S_AXI_RRESP(S_AXI_RRESP),          // output   [1:0]
    .S_AXI_RVALID(S_AXI_RVALID),        // output    
    .S_AXI_RREADY(S_AXI_RREADY)         // input
);

tdc#(.INITIAL(INITIAL), .DELAY(DELAY)) tdc1(
    .clk(S_AXI_ACLK),
    .reset(S_AXI_ARESETN),
    // TODO: Replace this with an encoder that just uses 6 bits
    .delay(tdcOut)
);

virus#(.NUM(VIRUS_NUM_B), .SIZE(VIRUS_B_SIZE)) virus1(
    .out(virusOut),
    .enable(virusEnQ)
);

reg  memWe;
reg  [C_S_AXI_ADDR_WIDTH-1:0] memAddr;
reg  [MEM_WIDTH-1:0] memDi;
wire [MEM_WIDTH-1:0] memDo;

RAM#(.DEPTH(ABS_READ_MAX)) ram1(
    .clk(S_AXI_ACLK),
    .we(memWe),
    .a(memAddr),
    .di(memDi),
    .do(memDo)
);

parameter IDLE=0, READ=1, READ_ONCE=2, READ_RAMP=3;
reg [7:0] state, nextState;
reg [32:0] counterD, counterQ, virusCounterD, virusCounterQ, freqD, freqQ,
           maxD, maxQ;
reg [DELAY-1:0] tdcClean;
reg [6:0] total;

integer i;
always @ * begin
    counterD = counterQ;
    virusCounterD = virusCounterQ;
    freqD = freqQ;
    maxD = maxQ;
    nextState = state;
    virusEnD = virusEnQ;
    virusMaskD = virusMaskQ;
    virusFlagD = virusFlagQ;
    rdData = 0;
    total = 0;
    memWe = 0;
    memAddr = 0;
    memDi = 0;
    trigger = 0;
    
    case(state)
        IDLE:begin
            virusEnD = 0;
            virusFlagD = 0;
            if(rd && rdAddr < (ABS_READ_MAX<<2))begin
                memAddr = rdAddr;
                rdData = memDo | (1<<31);
                //rdData[C_S_AXI_DATA_WIDTH-1] = 1; 
            end else if(wr) begin
                if(wrAddr == REC_ADDR)begin
                    counterD = 0;
                    virusCounterD = 0;
                    trigger = 1;    // Trigger scope when we start recording
                    if(wrData == 0)begin
                        nextState = READ;
                    end else if (wrData== 1) begin
                        nextState = READ_ONCE;
                    end else begin
                        nextState = READ_RAMP;
                    end
                end else if(wrAddr == FREQ_ADDR) begin
                    freqD = wrData;
                end else if(wrAddr == READ_MAX_ADDR)begin
                    maxD = wrData;
                end else if(wrAddr == VIRUS_ADDR)begin
                    virusMaskD = wrData;
                end
            end
        end
        READ:begin
            if(virusCounterQ == (freqQ-1))begin
                virusFlagD = ~virusFlagQ;
                virusCounterD = 0;
            end else begin
                virusCounterD = virusCounterQ + 1;
            end
            
            if(virusFlagQ == 1)begin
                virusEnD = virusMaskQ;
            end else begin
                virusEnD = 0;
            end
        
            if(counterQ < maxQ)begin
                tdcClean[0] = tdcOut[0];
                // Clean tdcOut to eliminate glitches
                for(i = 1; i < DELAY; i = i + 1)begin
                    tdcClean[i] = tdcOut[i-1] && tdcOut[i];
                end
                total = 0;
                // Find top bit of tdc
                for(i = 0; i < DELAY; i = i + 1)begin
                    total = total + tdcClean[i];
                end
                // Write to the memory
                memWe = 1;
                memAddr = counterQ << 2;
                memDi = total;
                counterD = counterQ + 1;
            end else begin
                counterD = 0;
                nextState = IDLE;
            end
        end
        READ_ONCE:begin
            if(virusCounterQ >= freqQ-1)begin
                virusEnD = virusMaskQ;
            end else begin
                virusCounterD = virusCounterQ + 1;
            end
            if(counterQ < maxQ)begin
                tdcClean[0] = tdcOut[0];
                // Clean tdcOut to eliminate glitches
                for(i = 1; i < DELAY; i = i + 1)begin
                    tdcClean[i] = tdcOut[i-1] && tdcOut[i];
                end
                total = 0;
                // Find top bit of tdc
                for(i = 0; i < DELAY; i = i + 1)begin
                    total = total + tdcClean[i];
                end
                // Write to the memory
                memWe = 1;
                memAddr = counterQ << 2;
                memDi = total;
                counterD = counterQ + 1;
            end else begin
                counterD = 0;
                nextState = IDLE;
            end
        end
        READ_RAMP:begin
            nextState = IDLE;
        end
    endcase
end

always @ (posedge S_AXI_ACLK)begin
    if(S_AXI_ARESETN == 1)begin
        state <= nextState;
        counterQ <= counterD;
        virusCounterQ <= virusCounterD;
        freqQ <= freqD;
        virusEnQ <= virusEnD;
        virusMaskQ <= virusMaskD;
        virusFlagQ <= virusFlagD;
        maxQ <= maxD;
    end else begin
        state <= IDLE;
        counterQ <= 0;
        virusCounterQ <= 0;
        freqQ <= 0;
        virusEnQ <= 0;
        virusMaskQ <= 0;
        virusFlagQ <= 0;
        maxQ <= 0;
    end
end

endmodule
