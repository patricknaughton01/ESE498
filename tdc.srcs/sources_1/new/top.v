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
    REC_ADDR='hFFFC, FREQ_ADDR='hFFF8, VIRUS_ADDR='hFFD8, MEM_WIDTH=16, PP_ADDR='hFFF0,
    ABS_READ_MAX=10000, VIRUS_NUM_B=128, VIRUS_B_SIZE=128)(
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
reg [C_S_AXI_DATA_WIDTH-1:0] counterD, counterQ, virusCounterD, virusCounterQ, freqD, freqQ,
           maxD, maxQ, ppD, ppQ;
reg [C_S_AXI_DATA_WIDTH-1:0] oneMask;
reg [DELAY-1:0] tdcClean;
reg [6:0] total, diffMaxD, diffMaxQ, diffMinD, diffMinQ;

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
    diffMaxD = diffMaxQ;
    diffMinD = diffMinQ;
    ppD = ppQ;
    rdData = 0;
    total = 0;
    memWe = 0;
    memAddr = 0;
    memDi = 0;
    trigger = 0;
    oneMask = -1;   // Mask of all 1's (C_S_AXI_DATA_WIDTH wide)
    
    case(state)
        IDLE:begin
            virusEnD = 0;
            virusFlagD = 0;
            if(rd && rdAddr < (ABS_READ_MAX<<2))begin
                memAddr = rdAddr;
                rdData = memDo;
                rdData[C_S_AXI_DATA_WIDTH-1] = 1; 
            end else if(rd && rdAddr == PP_ADDR)begin
                rdData = ppQ;
                rdData[C_S_AXI_DATA_WIDTH-1] = 1;
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
                end else if(wrAddr >= VIRUS_ADDR && wrAddr < VIRUS_ADDR + 4*4)begin
                    virusMaskD = (virusMaskQ & ~(oneMask << ((wrAddr - VIRUS_ADDR)<<3))) | (wrData << ((wrAddr - VIRUS_ADDR)<<3));
                    /*if (wrAddr[3:2] == 0) begin
                        virusMaskD[C_S_AXI_DATA_WIDTH-1:0] = wrData;
                    end else if (wrAddr[3:2] == 1) begin
                        virusMaskD[2*C_S_AXI_DATA_WIDTH-1:C_S_AXI_DATA_WIDTH] = wrData;
                    end else if (wrAddr[3:2] == 2) begin
                        virusMaskD[3*C_S_AXI_DATA_WIDTH-1:2*C_S_AXI_DATA_WIDTH] = wrData;
                    end else begin
                        virusMaskD[4*C_S_AXI_DATA_WIDTH-1:3*C_S_AXI_DATA_WIDTH] = wrData;
                    end*/
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
                
                // Decide if this is a new min or max
                if (total > diffMaxQ) begin
                    diffMaxD = total;
                end
                if (total < diffMinQ) begin
                    diffMinD = total;
                end
                
                // Write to the memory
                memWe = 1;
                memAddr = counterQ << 2;
                memDi = total;
                counterD = counterQ + 1;
            end else begin
                // Write to the PP register
                counterD = 0;
                diffMaxD = 0;
                diffMinD = 'h3f;
                ppD = (diffMaxQ - diffMinQ);
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
            if(virusCounterQ >= freqQ-1)begin
                virusCounterD = 0;
                // If we haven't reached the final mask, add another 1 (turn another group on)
                if(virusEnQ < virusMaskQ)begin
                    if (virusEnQ == 0)begin
                        virusEnD = 1;
                    end else begin
                        virusEnD = (virusEnQ << 1) | 1;
                    end
                end
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
        diffMaxQ <= diffMaxD;
        diffMinQ <= diffMinD;
        ppQ <= ppD;
    end else begin
        state <= IDLE;
        counterQ <= 0;
        virusCounterQ <= 0;
        freqQ <= 0;
        virusEnQ <= 0;
        virusMaskQ <= 0;
        virusFlagQ <= 0;
        maxQ <= 0;
        diffMaxQ <= 0;
        diffMinQ <= 'h3f;               // This stores a min value, so initialize it to max
        ppQ <= 0;
    end
end

endmodule
