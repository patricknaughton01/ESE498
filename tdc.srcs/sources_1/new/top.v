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


module top#(parameter C_S_AXI_ADDR_WIDTH = 10, C_S_AXI_DATA_WIDTH = 32, INITIAL=256, DELAY=63, READ_MAX=10000, VIRUS=5000, VIRUS_START=500)(
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
    input       S_AXI_RREADY
);

wire [C_S_AXI_ADDR_WIDTH-1:0] wrAddr;
wire [C_S_AXI_DATA_WIDTH-1:0] wrData;
wire wr;
wire [C_S_AXI_ADDR_WIDTH-1:0] rdAddr;
reg  [C_S_AXI_DATA_WIDTH-1:0] rdData;
wire rd;

wire [DELAY-1:0] tdcOut;

reg  virusEn;
wire [VIRUS-1:0] virusOut;

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

virus#(.SIZE(VIRUS)) virus1(
    .out(virusOut),
    .enable(virusEn)
);

parameter IDLE=0, READ=1;
reg [7:0] state, nextState;
reg [5:0] mem[READ_MAX-1:0];
reg [15:0] counterD, counterQ;
reg [DELAY-1:0] tdcClean;
reg [5:0] total;

integer i;
always @ * begin
    counterD = counterQ;
    nextState = state;
    virusEn = 0;
    rdData = 0;
    total = 0;
    case(state)
        IDLE:begin
            if(rd && rdAddr < (READ_MAX<<2))begin
                rdData = mem[rdAddr>>2];
                rdData[C_S_AXI_DATA_WIDTH-1] = 1; 
            end else if(wr) begin
                counterD = 0;
                nextState = READ;
            end
        end
        READ:begin
        
            if(counterQ >= VIRUS_START)begin
                virusEn = 1;
            end
        
            if(counterQ < READ_MAX)begin
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
        if(state == READ)begin
            if(counterQ < READ_MAX)begin
                mem[counterQ] <= total;
            end
        end
    end else begin
        state <= IDLE;
        counterQ <= 0;
        for(i = 0; i<READ_MAX; i = i + 1)begin
            mem[i] <= 0;
        end
    end
end

endmodule
