`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2020 10:48:03 AM
// Design Name: 
// Module Name: top_tb
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


module top_tb#(parameter C_S_AXI_ADDR_WIDTH = 16, C_S_AXI_DATA_WIDTH = 32, CLK_PERIOD=10, READ_MAX=8192,
    TO_READ=8192, M_TDATA_WIDTH=16, S_TDATA_WIDTH=48, FFT_WIDTH=8192, RUNS=4)();

// Axi4Lite signals
reg  S_AXI_ACLK ;
reg  S_AXI_ARESETN ;
wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_AWADDR ;
wire  S_AXI_AWVALID ;
wire S_AXI_AWREADY ;
wire  [C_S_AXI_DATA_WIDTH-1:0] S_AXI_WDATA ;
wire  [3:0] S_AXI_WSTRB ;
wire  S_AXI_WVALID ;
wire S_AXI_WREADY ;
wire [1:0] S_AXI_BRESP ;
wire S_AXI_BVALID ;
wire  S_AXI_BREADY ;
wire  [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_ARADDR ;
wire  S_AXI_ARVALID ;
wire S_AXI_ARREADY ;
wire [C_S_AXI_DATA_WIDTH-1:0] S_AXI_RDATA ;
wire [1:0] S_AXI_RRESP ;
wire S_AXI_RVALID ;
wire  S_AXI_RREADY ;
// Simple Bus signals
reg     [C_S_AXI_ADDR_WIDTH-1:0]    wrAddr ;
reg     [C_S_AXI_DATA_WIDTH-1:0]    wrData ;
reg                                 wr ;
wire                                wrDone ;
reg     [C_S_AXI_ADDR_WIDTH-1:0]    rdAddr ;
wire    [C_S_AXI_DATA_WIDTH-1:0]    rdData ;
reg                                 rd ;
wire                                rdDone ;

// AxiS bus Manager
wire[M_TDATA_WIDTH-1:0] M_TDATA;
wire                    M_TLAST;
reg                     M_TREADY;
wire                    M_TVALID;

// AxiS bus Supporter
reg [S_TDATA_WIDTH-1:0] S_TDATA;
reg                     S_TLAST;
wire                    S_TREADY;
reg                     S_TVALID;

wire trigger;

top#(.C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH), .C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH), .SIM(63),
    .M_TDATA_WIDTH(M_TDATA_WIDTH), .S_TDATA_WIDTH(S_TDATA_WIDTH), .FFT_WIDTH(FFT_WIDTH)) top1(
    // Axi4Lite Bus
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    S_AXI_ACLK, // clk2
    trigger
);

Axi4LiteManager #(.C_M_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH), .C_M_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH)) Axi4LiteManager1
    (
    // Simple Bus
    .wrAddr(wrAddr),                    // input    [C_M_AXI_ADDR_WIDTH-1:0]
    .wrData(wrData),                    // input    [C_M_AXI_DATA_WIDTH-1:0]
    .wr(wr),                            // input    
    .wrDone(wrDone),                    // output
    .rdAddr(rdAddr),                    // input    [C_M_AXI_ADDR_WIDTH-1:0]
    .rdData(rdData),                    // output   [C_M_AXI_DATA_WIDTH-1:0]
    .rd(rd),                            // input
    .rdDone(rdDone),                    // output
    // Axi4Lite Bus
    .M_AXI_ACLK(S_AXI_ACLK),            // input
    .M_AXI_ARESETN(S_AXI_ARESETN),      // input
    .M_AXI_AWADDR(S_AXI_AWADDR),        // output   [C_M_AXI_ADDR_WIDTH-1:0] 
    .M_AXI_AWVALID(S_AXI_AWVALID),      // output
    .M_AXI_AWREADY(S_AXI_AWREADY),      // input
    .M_AXI_WDATA(S_AXI_WDATA),          // output   [C_M_AXI_DATA_WIDTH-1:0]
    .M_AXI_WSTRB(S_AXI_WSTRB),          // output   [3:0]
    .M_AXI_WVALID(S_AXI_WVALID),        // output
    .M_AXI_WREADY(S_AXI_WREADY),        // input
    .M_AXI_BRESP(S_AXI_BRESP),          // input    [1:0]
    .M_AXI_BVALID(S_AXI_BVALID),        // input
    .M_AXI_BREADY(S_AXI_BREADY),        // output
    .M_AXI_ARADDR(S_AXI_ARADDR),        // output   [C_M_AXI_ADDR_WIDTH-1:0]
    .M_AXI_ARVALID(S_AXI_ARVALID),      // output
    .M_AXI_ARREADY(S_AXI_ARREADY),      // input
    .M_AXI_RDATA(S_AXI_RDATA),          // input    [C_M_AXI_DATA_WIDTH-1:0]
    .M_AXI_RRESP(S_AXI_RRESP),          // input    [1:0]
    .M_AXI_RVALID(S_AXI_RVALID),        // input
    .M_AXI_RREADY(S_AXI_RREADY)         // output
);  

parameter CLK_PERIOD_2 = CLK_PERIOD/2;

always begin
    #CLK_PERIOD_2 S_AXI_ACLK = ~S_AXI_ACLK;
end

integer i;
initial begin
    S_AXI_ARESETN = 0;
    S_AXI_ACLK = 0;
    rdAddr = 0;
    rd = 0;
    wr = 0;
    wrAddr = 0;
    wrData = 0;
    #(CLK_PERIOD*5);
    S_AXI_ARESETN = 1;
    #(CLK_PERIOD*10);
    // Write number of measurements to make
    wr = 1;
    wrAddr = 'hFFF4;
    wrData = TO_READ;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD*3);
    // Write the frequency of the virus
    wr = 1;
    wrAddr = 'hFFF8;
    wrData = 50;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    // Write the number of virus groups to start
    // Must be done in 4 groups b/c mask is 128 bits
    wr = 1;
    wrAddr = 'hFFD8;
    wrData = 'hDEADDEAD;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    wr = 1;
    wrAddr = 'hFFDC;
    wrData = 'hBEEFBEEF;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    wr = 1;
    wrAddr = 'hFFE0;
    wrData = 'hFEEDFEED;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    wr = 1;
    wrAddr = 'hFFE4;
    wrData = 'hDEAFDEAF;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    // Write the challenge in
    // Must be done in 4 groups b/c mask is 128 bits
    wr = 1;
    wrAddr = 'hFF00;
    wrData = 'hAAAA_AAAA;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    wr = 1;
    wrAddr = 'hFF04;
    wrData = 'hBBBB_BBBB;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    wr = 1;
    wrAddr = 'hFF08;
    wrData = 'hCCCC_CCCC;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    wr = 1;
    wrAddr = 'hFF0C;
    wrData = 'hDDDD_DDDD;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    // Start the measurement - Challenge
    wr = 1;
    wrAddr = 'hFFFC;
    wrData = 3;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    #(CLK_PERIOD * ((TO_READ * 3 * RUNS) + 100));
    // Read Mean value
    rd = 1;
    rdAddr = 'hFEFC;
    #CLK_PERIOD;
    rd = 0;
    #(CLK_PERIOD*10);
    // Read Var value
    rd = 1;
    rdAddr = 'hFEF8;
    #CLK_PERIOD;
    rd = 0;
    #(CLK_PERIOD*10);
    
    // Write a second challenge in
    // Must be done in 4 groups b/c mask is 128 bits
    wr = 1;
    wrAddr = 'hFF00;
    wrData = 'h0123_4567;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    wr = 1;
    wrAddr = 'hFF04;
    wrData = 'h89AB_CDEF;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    wr = 1;
    wrAddr = 'hFF08;
    wrData = 'hFEDC_BA98;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    wr = 1;
    wrAddr = 'hFF0C;
    wrData = 'h7654_3210;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    // Start the measurement - Challenge
    wr = 1;
    wrAddr = 'hFFFC;
    wrData = 3;
    #CLK_PERIOD;
    wr = 0;
    #(CLK_PERIOD * 5);
    #(CLK_PERIOD * ((TO_READ * 3 * RUNS) + 100));
    // Read Mean value
    rd = 1;
    rdAddr = 'hFEFC;
    #CLK_PERIOD;
    rd = 0;
    #(CLK_PERIOD*10);
    // Read Var value
    rd = 1;
    rdAddr = 'hFEF8;
    #CLK_PERIOD;
    rd = 0;
    #(CLK_PERIOD*10);
    $stop;
end

always @ * begin
    M_TREADY = 0;
    if(M_TVALID == 1)begin
        M_TREADY = 1;
    end
end

endmodule
