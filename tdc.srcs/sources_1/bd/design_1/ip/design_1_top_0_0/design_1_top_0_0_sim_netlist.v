// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Jan 24 17:16:33 2020
// Host        : patricknaughton01 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/patricknaughton01/Documents/WashU/School/Sem6/ESE498/tdc/tdc.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
   (S_AXI_ACLK,
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
    S_AXI_RREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [9:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [9:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [9:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWVALID;
  wire S_AXI_BVALID;
  wire [0:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;

  assign S_AXI_AWREADY = S_AXI_BVALID;
  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7] = \<const0> ;
  assign S_AXI_RDATA[6] = \<const0> ;
  assign S_AXI_RDATA[5] = \<const0> ;
  assign S_AXI_RDATA[4] = \<const0> ;
  assign S_AXI_RDATA[3] = \<const0> ;
  assign S_AXI_RDATA[2] = \<const0> ;
  assign S_AXI_RDATA[1] = \<const0> ;
  assign S_AXI_RDATA[0] = \^S_AXI_RDATA [0];
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign S_AXI_RVALID = S_AXI_ARREADY;
  assign S_AXI_WREADY = S_AXI_BVALID;
  GND GND
       (.G(\<const0> ));
  design_1_top_0_0_top inst
       (.\FSM_sequential_state_reg[1] (S_AXI_BVALID),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY));
endmodule

(* ORIG_REF_NAME = "Axi4LiteSupporter" *) 
module design_1_top_0_0_Axi4LiteSupporter
   (\FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[1]_1 ,
    \FSM_sequential_state_reg[1]_2 ,
    counterD,
    rdData__0,
    S_AXI_ARADDR_5_sp_1,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    \FSM_sequential_state_reg[1]_3 ,
    S_AXI_ACLK,
    S_AXI_ARADDR,
    state,
    FSM_sequential_state_reg,
    counterQ,
    \rdData_reg[0]_i_1_0 ,
    \rdData_reg[0]_i_1_1 ,
    \rdData_reg[0]_i_1_2 ,
    \rdData_reg[0]_i_1_3 ,
    \rdData_reg[0]_i_5_0 ,
    \rdData_reg[0]_i_5_1 ,
    \rdData_reg[0]_i_5_2 ,
    \rdData_reg[0]_i_5_3 ,
    \rdData_reg[0]_i_5_4 ,
    \rdData_reg[0]_i_5_5 ,
    \rdData_reg[0]_i_5_6 ,
    \rdData_reg[0]_i_5_7 ,
    \rdData_reg[0]_i_5_8 ,
    \rdData_reg[0]_i_5_9 ,
    \rdData_reg[0]_i_5_10 ,
    \rdData_reg[0]_i_5_11 ,
    \rdData_reg[0]_i_5_12 ,
    \rdData_reg[0]_i_5_13 ,
    \rdData_reg[0]_i_5_14 ,
    \rdData_reg[0]_i_5_15 ,
    \rdData_reg[0]_i_3_0 ,
    \rdData_reg[0]_i_3_1 ,
    \rdData_reg[0]_i_3_2 ,
    \rdData_reg[0]_i_3_3 ,
    \rdData_reg[0]_i_3_4 ,
    \rdData_reg[0]_i_3_5 ,
    \rdData_reg[0]_i_3_6 ,
    \rdData_reg[0]_i_3_7 ,
    \rdData_reg[0]_i_3_8 ,
    \rdData_reg[0]_i_3_9 ,
    \rdData_reg[0]_i_3_10 ,
    \rdData_reg[0]_i_3_11 ,
    \rdData_reg[0]_i_3_12 ,
    \rdData_reg[0]_i_3_13 ,
    \rdData_reg[0]_i_3_14 ,
    \rdData_reg[0]_i_3_15 ,
    \rdData_reg[0]_i_23_0 ,
    \rdData_reg[0]_i_23_1 ,
    \rdData_reg[0]_i_23_2 ,
    \rdData_reg[0]_i_23_3 ,
    \rdData_reg[0]_i_23_4 ,
    \rdData_reg[0]_i_23_5 ,
    \rdData_reg[0]_i_23_6 ,
    \rdData_reg[0]_i_23_7 ,
    \rdData_reg[0]_i_23_8 ,
    \rdData_reg[0]_i_23_9 ,
    \rdData_reg[0]_i_23_10 ,
    \rdData_reg[0]_i_23_11 ,
    \rdData_reg[0]_i_23_12 ,
    \rdData_reg[0]_i_23_13 ,
    \rdData_reg[0]_i_23_14 ,
    \rdData_reg[0]_i_23_15 ,
    \rdData_reg[0]_i_22_0 ,
    \rdData_reg[0]_i_22_1 ,
    \rdData_reg[0]_i_22_2 ,
    \rdData_reg[0]_i_22_3 ,
    \rdData_reg[0]_i_22_4 ,
    \rdData_reg[0]_i_22_5 ,
    \rdData_reg[0]_i_22_6 ,
    \rdData_reg[0]_i_22_7 ,
    \rdData_reg[0]_i_22_8 ,
    \rdData_reg[0]_i_22_9 ,
    \rdData_reg[0]_i_22_10 ,
    \rdData_reg[0]_i_22_11 ,
    \rdData_reg[0]_i_22_12 ,
    \rdData_reg[0]_i_22_13 ,
    \rdData_reg[0]_i_22_14 ,
    \rdData_reg[0]_i_22_15 ,
    \rdData_reg[0]_i_27_0 ,
    \rdData_reg[0]_i_27_1 ,
    \rdData_reg[0]_i_27_2 ,
    \rdData_reg[0]_i_27_3 ,
    \rdData_reg[0]_i_27_4 ,
    \rdData_reg[0]_i_27_5 ,
    \rdData_reg[0]_i_27_6 ,
    \rdData_reg[0]_i_27_7 ,
    \rdData_reg[0]_i_27_8 ,
    \rdData_reg[0]_i_27_9 ,
    \rdData_reg[0]_i_27_10 ,
    \rdData_reg[0]_i_27_11 ,
    \rdData_reg[0]_i_27_12 ,
    \rdData_reg[0]_i_27_13 ,
    \rdData_reg[0]_i_27_14 ,
    \rdData_reg[0]_i_27_15 ,
    \rdData_reg[0]_i_26_0 ,
    \rdData_reg[0]_i_26_1 ,
    \rdData_reg[0]_i_26_2 ,
    \rdData_reg[0]_i_26_3 ,
    \rdData_reg[0]_i_26_4 ,
    \rdData_reg[0]_i_26_5 ,
    \rdData_reg[0]_i_26_6 ,
    \rdData_reg[0]_i_26_7 ,
    \rdData_reg[0]_i_26_8 ,
    \rdData_reg[0]_i_26_9 ,
    \rdData_reg[0]_i_26_10 ,
    \rdData_reg[0]_i_26_11 ,
    \rdData_reg[0]_i_26_12 ,
    \rdData_reg[0]_i_26_13 ,
    \rdData_reg[0]_i_26_14 ,
    \rdData_reg[0]_i_26_15 ,
    S_AXI_ARVALID,
    rdData,
    S_AXI_ARESETN,
    S_AXI_AWVALID,
    S_AXI_RREADY);
  output \FSM_sequential_state_reg[1]_0 ;
  output \FSM_sequential_state_reg[1]_1 ;
  output \FSM_sequential_state_reg[1]_2 ;
  output counterD;
  output rdData__0;
  output S_AXI_ARADDR_5_sp_1;
  output [0:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output \FSM_sequential_state_reg[1]_3 ;
  input S_AXI_ACLK;
  input [9:0]S_AXI_ARADDR;
  input state;
  input FSM_sequential_state_reg;
  input [0:0]counterQ;
  input \rdData_reg[0]_i_1_0 ;
  input \rdData_reg[0]_i_1_1 ;
  input \rdData_reg[0]_i_1_2 ;
  input \rdData_reg[0]_i_1_3 ;
  input \rdData_reg[0]_i_5_0 ;
  input \rdData_reg[0]_i_5_1 ;
  input \rdData_reg[0]_i_5_2 ;
  input \rdData_reg[0]_i_5_3 ;
  input \rdData_reg[0]_i_5_4 ;
  input \rdData_reg[0]_i_5_5 ;
  input \rdData_reg[0]_i_5_6 ;
  input \rdData_reg[0]_i_5_7 ;
  input \rdData_reg[0]_i_5_8 ;
  input \rdData_reg[0]_i_5_9 ;
  input \rdData_reg[0]_i_5_10 ;
  input \rdData_reg[0]_i_5_11 ;
  input \rdData_reg[0]_i_5_12 ;
  input \rdData_reg[0]_i_5_13 ;
  input \rdData_reg[0]_i_5_14 ;
  input \rdData_reg[0]_i_5_15 ;
  input \rdData_reg[0]_i_3_0 ;
  input \rdData_reg[0]_i_3_1 ;
  input \rdData_reg[0]_i_3_2 ;
  input \rdData_reg[0]_i_3_3 ;
  input \rdData_reg[0]_i_3_4 ;
  input \rdData_reg[0]_i_3_5 ;
  input \rdData_reg[0]_i_3_6 ;
  input \rdData_reg[0]_i_3_7 ;
  input \rdData_reg[0]_i_3_8 ;
  input \rdData_reg[0]_i_3_9 ;
  input \rdData_reg[0]_i_3_10 ;
  input \rdData_reg[0]_i_3_11 ;
  input \rdData_reg[0]_i_3_12 ;
  input \rdData_reg[0]_i_3_13 ;
  input \rdData_reg[0]_i_3_14 ;
  input \rdData_reg[0]_i_3_15 ;
  input \rdData_reg[0]_i_23_0 ;
  input \rdData_reg[0]_i_23_1 ;
  input \rdData_reg[0]_i_23_2 ;
  input \rdData_reg[0]_i_23_3 ;
  input \rdData_reg[0]_i_23_4 ;
  input \rdData_reg[0]_i_23_5 ;
  input \rdData_reg[0]_i_23_6 ;
  input \rdData_reg[0]_i_23_7 ;
  input \rdData_reg[0]_i_23_8 ;
  input \rdData_reg[0]_i_23_9 ;
  input \rdData_reg[0]_i_23_10 ;
  input \rdData_reg[0]_i_23_11 ;
  input \rdData_reg[0]_i_23_12 ;
  input \rdData_reg[0]_i_23_13 ;
  input \rdData_reg[0]_i_23_14 ;
  input \rdData_reg[0]_i_23_15 ;
  input \rdData_reg[0]_i_22_0 ;
  input \rdData_reg[0]_i_22_1 ;
  input \rdData_reg[0]_i_22_2 ;
  input \rdData_reg[0]_i_22_3 ;
  input \rdData_reg[0]_i_22_4 ;
  input \rdData_reg[0]_i_22_5 ;
  input \rdData_reg[0]_i_22_6 ;
  input \rdData_reg[0]_i_22_7 ;
  input \rdData_reg[0]_i_22_8 ;
  input \rdData_reg[0]_i_22_9 ;
  input \rdData_reg[0]_i_22_10 ;
  input \rdData_reg[0]_i_22_11 ;
  input \rdData_reg[0]_i_22_12 ;
  input \rdData_reg[0]_i_22_13 ;
  input \rdData_reg[0]_i_22_14 ;
  input \rdData_reg[0]_i_22_15 ;
  input \rdData_reg[0]_i_27_0 ;
  input \rdData_reg[0]_i_27_1 ;
  input \rdData_reg[0]_i_27_2 ;
  input \rdData_reg[0]_i_27_3 ;
  input \rdData_reg[0]_i_27_4 ;
  input \rdData_reg[0]_i_27_5 ;
  input \rdData_reg[0]_i_27_6 ;
  input \rdData_reg[0]_i_27_7 ;
  input \rdData_reg[0]_i_27_8 ;
  input \rdData_reg[0]_i_27_9 ;
  input \rdData_reg[0]_i_27_10 ;
  input \rdData_reg[0]_i_27_11 ;
  input \rdData_reg[0]_i_27_12 ;
  input \rdData_reg[0]_i_27_13 ;
  input \rdData_reg[0]_i_27_14 ;
  input \rdData_reg[0]_i_27_15 ;
  input \rdData_reg[0]_i_26_0 ;
  input \rdData_reg[0]_i_26_1 ;
  input \rdData_reg[0]_i_26_2 ;
  input \rdData_reg[0]_i_26_3 ;
  input \rdData_reg[0]_i_26_4 ;
  input \rdData_reg[0]_i_26_5 ;
  input \rdData_reg[0]_i_26_6 ;
  input \rdData_reg[0]_i_26_7 ;
  input \rdData_reg[0]_i_26_8 ;
  input \rdData_reg[0]_i_26_9 ;
  input \rdData_reg[0]_i_26_10 ;
  input \rdData_reg[0]_i_26_11 ;
  input \rdData_reg[0]_i_26_12 ;
  input \rdData_reg[0]_i_26_13 ;
  input \rdData_reg[0]_i_26_14 ;
  input \rdData_reg[0]_i_26_15 ;
  input S_AXI_ARVALID;
  input rdData;
  input S_AXI_ARESETN;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire FSM_sequential_state_reg;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire \FSM_sequential_state_reg[1]_2 ;
  wire \FSM_sequential_state_reg[1]_3 ;
  wire S_AXI_ACLK;
  wire [9:0]S_AXI_ARADDR;
  wire S_AXI_ARADDR_5_sn_1;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWVALID;
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire counterD;
  wire [0:0]counterQ;
  wire [5:0]rdAddr;
  wire rdData;
  wire rdDataQ;
  wire \rdDataQ[0]_i_1_n_0 ;
  wire rdData__0;
  wire \rdData_reg[0]_i_10_n_0 ;
  wire \rdData_reg[0]_i_11_n_0 ;
  wire \rdData_reg[0]_i_14_n_0 ;
  wire \rdData_reg[0]_i_15_n_0 ;
  wire \rdData_reg[0]_i_18_n_0 ;
  wire \rdData_reg[0]_i_19_n_0 ;
  wire \rdData_reg[0]_i_1_0 ;
  wire \rdData_reg[0]_i_1_1 ;
  wire \rdData_reg[0]_i_1_2 ;
  wire \rdData_reg[0]_i_1_3 ;
  wire \rdData_reg[0]_i_20_n_0 ;
  wire \rdData_reg[0]_i_21_n_0 ;
  wire \rdData_reg[0]_i_22_0 ;
  wire \rdData_reg[0]_i_22_1 ;
  wire \rdData_reg[0]_i_22_10 ;
  wire \rdData_reg[0]_i_22_11 ;
  wire \rdData_reg[0]_i_22_12 ;
  wire \rdData_reg[0]_i_22_13 ;
  wire \rdData_reg[0]_i_22_14 ;
  wire \rdData_reg[0]_i_22_15 ;
  wire \rdData_reg[0]_i_22_2 ;
  wire \rdData_reg[0]_i_22_3 ;
  wire \rdData_reg[0]_i_22_4 ;
  wire \rdData_reg[0]_i_22_5 ;
  wire \rdData_reg[0]_i_22_6 ;
  wire \rdData_reg[0]_i_22_7 ;
  wire \rdData_reg[0]_i_22_8 ;
  wire \rdData_reg[0]_i_22_9 ;
  wire \rdData_reg[0]_i_22_n_0 ;
  wire \rdData_reg[0]_i_23_0 ;
  wire \rdData_reg[0]_i_23_1 ;
  wire \rdData_reg[0]_i_23_10 ;
  wire \rdData_reg[0]_i_23_11 ;
  wire \rdData_reg[0]_i_23_12 ;
  wire \rdData_reg[0]_i_23_13 ;
  wire \rdData_reg[0]_i_23_14 ;
  wire \rdData_reg[0]_i_23_15 ;
  wire \rdData_reg[0]_i_23_2 ;
  wire \rdData_reg[0]_i_23_3 ;
  wire \rdData_reg[0]_i_23_4 ;
  wire \rdData_reg[0]_i_23_5 ;
  wire \rdData_reg[0]_i_23_6 ;
  wire \rdData_reg[0]_i_23_7 ;
  wire \rdData_reg[0]_i_23_8 ;
  wire \rdData_reg[0]_i_23_9 ;
  wire \rdData_reg[0]_i_23_n_0 ;
  wire \rdData_reg[0]_i_26_0 ;
  wire \rdData_reg[0]_i_26_1 ;
  wire \rdData_reg[0]_i_26_10 ;
  wire \rdData_reg[0]_i_26_11 ;
  wire \rdData_reg[0]_i_26_12 ;
  wire \rdData_reg[0]_i_26_13 ;
  wire \rdData_reg[0]_i_26_14 ;
  wire \rdData_reg[0]_i_26_15 ;
  wire \rdData_reg[0]_i_26_2 ;
  wire \rdData_reg[0]_i_26_3 ;
  wire \rdData_reg[0]_i_26_4 ;
  wire \rdData_reg[0]_i_26_5 ;
  wire \rdData_reg[0]_i_26_6 ;
  wire \rdData_reg[0]_i_26_7 ;
  wire \rdData_reg[0]_i_26_8 ;
  wire \rdData_reg[0]_i_26_9 ;
  wire \rdData_reg[0]_i_26_n_0 ;
  wire \rdData_reg[0]_i_27_0 ;
  wire \rdData_reg[0]_i_27_1 ;
  wire \rdData_reg[0]_i_27_10 ;
  wire \rdData_reg[0]_i_27_11 ;
  wire \rdData_reg[0]_i_27_12 ;
  wire \rdData_reg[0]_i_27_13 ;
  wire \rdData_reg[0]_i_27_14 ;
  wire \rdData_reg[0]_i_27_15 ;
  wire \rdData_reg[0]_i_27_2 ;
  wire \rdData_reg[0]_i_27_3 ;
  wire \rdData_reg[0]_i_27_4 ;
  wire \rdData_reg[0]_i_27_5 ;
  wire \rdData_reg[0]_i_27_6 ;
  wire \rdData_reg[0]_i_27_7 ;
  wire \rdData_reg[0]_i_27_8 ;
  wire \rdData_reg[0]_i_27_9 ;
  wire \rdData_reg[0]_i_27_n_0 ;
  wire \rdData_reg[0]_i_28_n_0 ;
  wire \rdData_reg[0]_i_29_n_0 ;
  wire \rdData_reg[0]_i_30_n_0 ;
  wire \rdData_reg[0]_i_31_n_0 ;
  wire \rdData_reg[0]_i_32_n_0 ;
  wire \rdData_reg[0]_i_33_n_0 ;
  wire \rdData_reg[0]_i_34_n_0 ;
  wire \rdData_reg[0]_i_35_n_0 ;
  wire \rdData_reg[0]_i_36_n_0 ;
  wire \rdData_reg[0]_i_37_n_0 ;
  wire \rdData_reg[0]_i_38_n_0 ;
  wire \rdData_reg[0]_i_39_n_0 ;
  wire \rdData_reg[0]_i_3_0 ;
  wire \rdData_reg[0]_i_3_1 ;
  wire \rdData_reg[0]_i_3_10 ;
  wire \rdData_reg[0]_i_3_11 ;
  wire \rdData_reg[0]_i_3_12 ;
  wire \rdData_reg[0]_i_3_13 ;
  wire \rdData_reg[0]_i_3_14 ;
  wire \rdData_reg[0]_i_3_15 ;
  wire \rdData_reg[0]_i_3_2 ;
  wire \rdData_reg[0]_i_3_3 ;
  wire \rdData_reg[0]_i_3_4 ;
  wire \rdData_reg[0]_i_3_5 ;
  wire \rdData_reg[0]_i_3_6 ;
  wire \rdData_reg[0]_i_3_7 ;
  wire \rdData_reg[0]_i_3_8 ;
  wire \rdData_reg[0]_i_3_9 ;
  wire \rdData_reg[0]_i_3_n_0 ;
  wire \rdData_reg[0]_i_40_n_0 ;
  wire \rdData_reg[0]_i_41_n_0 ;
  wire \rdData_reg[0]_i_42_n_0 ;
  wire \rdData_reg[0]_i_43_n_0 ;
  wire \rdData_reg[0]_i_44_n_0 ;
  wire \rdData_reg[0]_i_45_n_0 ;
  wire \rdData_reg[0]_i_4_n_0 ;
  wire \rdData_reg[0]_i_5_0 ;
  wire \rdData_reg[0]_i_5_1 ;
  wire \rdData_reg[0]_i_5_10 ;
  wire \rdData_reg[0]_i_5_11 ;
  wire \rdData_reg[0]_i_5_12 ;
  wire \rdData_reg[0]_i_5_13 ;
  wire \rdData_reg[0]_i_5_14 ;
  wire \rdData_reg[0]_i_5_15 ;
  wire \rdData_reg[0]_i_5_2 ;
  wire \rdData_reg[0]_i_5_3 ;
  wire \rdData_reg[0]_i_5_4 ;
  wire \rdData_reg[0]_i_5_5 ;
  wire \rdData_reg[0]_i_5_6 ;
  wire \rdData_reg[0]_i_5_7 ;
  wire \rdData_reg[0]_i_5_8 ;
  wire \rdData_reg[0]_i_5_9 ;
  wire \rdData_reg[0]_i_5_n_0 ;
  wire \rdData_reg[0]_i_6_n_0 ;
  wire \rdData_reg[0]_i_7_n_0 ;
  wire \rdData_reg[0]_i_8_n_0 ;
  wire \rdData_reg[0]_i_9_n_0 ;
  wire state;
  wire [0:0]state_0;

  assign S_AXI_ARADDR_5_sp_1 = S_AXI_ARADDR_5_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h13020000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state_0),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_ARVALID),
        .I4(S_AXI_ARESETN),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state_0),
        .I1(S_AXI_AWVALID),
        .I2(\FSM_sequential_state_reg[1]_1 ),
        .I3(S_AXI_ARVALID),
        .I4(S_AXI_ARESETN),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF022)) 
    FSM_sequential_state_i_1
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(\rdData_reg[0]_i_9_n_0 ),
        .I2(FSM_sequential_state_reg),
        .I3(state),
        .O(\FSM_sequential_state_reg[1]_3 ));
  (* FSM_ENCODED_STATES = "IDLE:00,iSTATE:10,RD1:01" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state_0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:00,iSTATE:10,RD1:01" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[1]_1 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \S_AXI_RDATA[0]_INST_0 
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(state_0),
        .I2(rdDataQ),
        .O(S_AXI_RDATA));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_RVALID_INST_0
       (.I0(state_0),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(S_AXI_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0B0BF000)) 
    \counterQ[0]_i_1 
       (.I0(\rdData_reg[0]_i_9_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .I2(state),
        .I3(FSM_sequential_state_reg),
        .I4(counterQ),
        .O(\FSM_sequential_state_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counterQ[6]_i_1 
       (.I0(\rdData_reg[0]_i_9_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .I2(state),
        .O(\FSM_sequential_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \counterQ[6]_i_2 
       (.I0(\rdData_reg[0]_i_9_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .I2(state),
        .O(counterD));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \rdDataQ[0]_i_1 
       (.I0(rdData),
        .I1(S_AXI_ARESETN),
        .I2(S_AXI_ARVALID),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(state_0),
        .I5(rdDataQ),
        .O(\rdDataQ[0]_i_1_n_0 ));
  FDRE \rdDataQ_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\rdDataQ[0]_i_1_n_0 ),
        .Q(rdDataQ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF00CCCCAAAAF0F0)) 
    \rdData_reg[0]_i_1 
       (.I0(\rdData_reg[0]_i_3_n_0 ),
        .I1(\rdData_reg[0]_i_4_n_0 ),
        .I2(\rdData_reg[0]_i_5_n_0 ),
        .I3(\rdData_reg[0]_i_6_n_0 ),
        .I4(\rdData_reg[0]_i_7_n_0 ),
        .I5(\rdData_reg[0]_i_8_n_0 ),
        .O(S_AXI_ARADDR_5_sn_1));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_10 
       (.I0(\rdData_reg[0]_i_3_4 ),
        .I1(\rdData_reg[0]_i_3_5 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_3_6 ),
        .I5(\rdData_reg[0]_i_3_7 ),
        .O(\rdData_reg[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_11 
       (.I0(\rdData_reg[0]_i_3_0 ),
        .I1(\rdData_reg[0]_i_3_1 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_3_2 ),
        .I5(\rdData_reg[0]_i_3_3 ),
        .O(\rdData_reg[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \rdData_reg[0]_i_12 
       (.I0(S_AXI_ARADDR[3]),
        .I1(S_AXI_ARVALID),
        .I2(\FSM_sequential_state_reg[1]_1 ),
        .I3(state_0),
        .O(rdAddr[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \rdData_reg[0]_i_13 
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARVALID),
        .I2(\FSM_sequential_state_reg[1]_1 ),
        .I3(state_0),
        .O(rdAddr[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_14 
       (.I0(\rdData_reg[0]_i_3_12 ),
        .I1(\rdData_reg[0]_i_3_13 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_3_14 ),
        .I5(\rdData_reg[0]_i_3_15 ),
        .O(\rdData_reg[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_15 
       (.I0(\rdData_reg[0]_i_3_8 ),
        .I1(\rdData_reg[0]_i_3_9 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_3_10 ),
        .I5(\rdData_reg[0]_i_3_11 ),
        .O(\rdData_reg[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \rdData_reg[0]_i_16 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(\FSM_sequential_state_reg[1]_1 ),
        .I3(state_0),
        .O(rdAddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \rdData_reg[0]_i_17 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(\FSM_sequential_state_reg[1]_1 ),
        .I3(state_0),
        .O(rdAddr[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_18 
       (.I0(\rdData_reg[0]_i_5_4 ),
        .I1(\rdData_reg[0]_i_5_5 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_5_6 ),
        .I5(\rdData_reg[0]_i_5_7 ),
        .O(\rdData_reg[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_19 
       (.I0(\rdData_reg[0]_i_5_0 ),
        .I1(\rdData_reg[0]_i_5_1 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_5_2 ),
        .I5(\rdData_reg[0]_i_5_3 ),
        .O(\rdData_reg[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rdData_reg[0]_i_2 
       (.I0(\rdData_reg[0]_i_9_n_0 ),
        .I1(state),
        .O(rdData__0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_20 
       (.I0(\rdData_reg[0]_i_5_12 ),
        .I1(\rdData_reg[0]_i_5_13 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_5_14 ),
        .I5(\rdData_reg[0]_i_5_15 ),
        .O(\rdData_reg[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_21 
       (.I0(\rdData_reg[0]_i_5_8 ),
        .I1(\rdData_reg[0]_i_5_9 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_5_10 ),
        .I5(\rdData_reg[0]_i_5_11 ),
        .O(\rdData_reg[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rdData_reg[0]_i_22 
       (.I0(\rdData_reg[0]_i_30_n_0 ),
        .I1(\rdData_reg[0]_i_31_n_0 ),
        .I2(rdAddr[3]),
        .I3(rdAddr[2]),
        .I4(\rdData_reg[0]_i_32_n_0 ),
        .I5(\rdData_reg[0]_i_33_n_0 ),
        .O(\rdData_reg[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rdData_reg[0]_i_23 
       (.I0(\rdData_reg[0]_i_34_n_0 ),
        .I1(\rdData_reg[0]_i_35_n_0 ),
        .I2(rdAddr[3]),
        .I3(rdAddr[2]),
        .I4(\rdData_reg[0]_i_36_n_0 ),
        .I5(\rdData_reg[0]_i_37_n_0 ),
        .O(\rdData_reg[0]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \rdData_reg[0]_i_24 
       (.I0(S_AXI_ARADDR[5]),
        .I1(S_AXI_ARVALID),
        .I2(\FSM_sequential_state_reg[1]_1 ),
        .I3(state_0),
        .O(rdAddr[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \rdData_reg[0]_i_25 
       (.I0(S_AXI_ARADDR[4]),
        .I1(S_AXI_ARVALID),
        .I2(\FSM_sequential_state_reg[1]_1 ),
        .I3(state_0),
        .O(rdAddr[4]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rdData_reg[0]_i_26 
       (.I0(\rdData_reg[0]_i_38_n_0 ),
        .I1(\rdData_reg[0]_i_39_n_0 ),
        .I2(rdAddr[3]),
        .I3(rdAddr[2]),
        .I4(\rdData_reg[0]_i_40_n_0 ),
        .I5(\rdData_reg[0]_i_41_n_0 ),
        .O(\rdData_reg[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rdData_reg[0]_i_27 
       (.I0(\rdData_reg[0]_i_42_n_0 ),
        .I1(\rdData_reg[0]_i_43_n_0 ),
        .I2(rdAddr[3]),
        .I3(rdAddr[2]),
        .I4(\rdData_reg[0]_i_44_n_0 ),
        .I5(\rdData_reg[0]_i_45_n_0 ),
        .O(\rdData_reg[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFF77FF77FF77FF7F)) 
    \rdData_reg[0]_i_28 
       (.I0(S_AXI_ARADDR[6]),
        .I1(S_AXI_ARADDR[5]),
        .I2(S_AXI_ARADDR[4]),
        .I3(\rdData_reg[0]_i_29_n_0 ),
        .I4(S_AXI_ARADDR[2]),
        .I5(S_AXI_ARADDR[3]),
        .O(\rdData_reg[0]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \rdData_reg[0]_i_29 
       (.I0(state_0),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .I2(S_AXI_ARVALID),
        .O(\rdData_reg[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rdData_reg[0]_i_3 
       (.I0(\rdData_reg[0]_i_10_n_0 ),
        .I1(\rdData_reg[0]_i_11_n_0 ),
        .I2(rdAddr[3]),
        .I3(rdAddr[2]),
        .I4(\rdData_reg[0]_i_14_n_0 ),
        .I5(\rdData_reg[0]_i_15_n_0 ),
        .O(\rdData_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_30 
       (.I0(\rdData_reg[0]_i_22_4 ),
        .I1(\rdData_reg[0]_i_22_5 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_22_6 ),
        .I5(\rdData_reg[0]_i_22_7 ),
        .O(\rdData_reg[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_31 
       (.I0(\rdData_reg[0]_i_22_0 ),
        .I1(\rdData_reg[0]_i_22_1 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_22_2 ),
        .I5(\rdData_reg[0]_i_22_3 ),
        .O(\rdData_reg[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_32 
       (.I0(\rdData_reg[0]_i_22_12 ),
        .I1(\rdData_reg[0]_i_22_13 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_22_14 ),
        .I5(\rdData_reg[0]_i_22_15 ),
        .O(\rdData_reg[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_33 
       (.I0(\rdData_reg[0]_i_22_8 ),
        .I1(\rdData_reg[0]_i_22_9 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_22_10 ),
        .I5(\rdData_reg[0]_i_22_11 ),
        .O(\rdData_reg[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_34 
       (.I0(\rdData_reg[0]_i_23_4 ),
        .I1(\rdData_reg[0]_i_23_5 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_23_6 ),
        .I5(\rdData_reg[0]_i_23_7 ),
        .O(\rdData_reg[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_35 
       (.I0(\rdData_reg[0]_i_23_0 ),
        .I1(\rdData_reg[0]_i_23_1 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_23_2 ),
        .I5(\rdData_reg[0]_i_23_3 ),
        .O(\rdData_reg[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_36 
       (.I0(\rdData_reg[0]_i_23_12 ),
        .I1(\rdData_reg[0]_i_23_13 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_23_14 ),
        .I5(\rdData_reg[0]_i_23_15 ),
        .O(\rdData_reg[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_37 
       (.I0(\rdData_reg[0]_i_23_8 ),
        .I1(\rdData_reg[0]_i_23_9 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_23_10 ),
        .I5(\rdData_reg[0]_i_23_11 ),
        .O(\rdData_reg[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_38 
       (.I0(\rdData_reg[0]_i_26_4 ),
        .I1(\rdData_reg[0]_i_26_5 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_26_6 ),
        .I5(\rdData_reg[0]_i_26_7 ),
        .O(\rdData_reg[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_39 
       (.I0(\rdData_reg[0]_i_26_0 ),
        .I1(\rdData_reg[0]_i_26_1 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_26_2 ),
        .I5(\rdData_reg[0]_i_26_3 ),
        .O(\rdData_reg[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_4 
       (.I0(\rdData_reg[0]_i_1_0 ),
        .I1(\rdData_reg[0]_i_1_1 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_1_2 ),
        .I5(\rdData_reg[0]_i_1_3 ),
        .O(\rdData_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_40 
       (.I0(\rdData_reg[0]_i_26_12 ),
        .I1(\rdData_reg[0]_i_26_13 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_26_14 ),
        .I5(\rdData_reg[0]_i_26_15 ),
        .O(\rdData_reg[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_41 
       (.I0(\rdData_reg[0]_i_26_8 ),
        .I1(\rdData_reg[0]_i_26_9 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_26_10 ),
        .I5(\rdData_reg[0]_i_26_11 ),
        .O(\rdData_reg[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_42 
       (.I0(\rdData_reg[0]_i_27_4 ),
        .I1(\rdData_reg[0]_i_27_5 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_27_6 ),
        .I5(\rdData_reg[0]_i_27_7 ),
        .O(\rdData_reg[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_43 
       (.I0(\rdData_reg[0]_i_27_0 ),
        .I1(\rdData_reg[0]_i_27_1 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_27_2 ),
        .I5(\rdData_reg[0]_i_27_3 ),
        .O(\rdData_reg[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_44 
       (.I0(\rdData_reg[0]_i_27_12 ),
        .I1(\rdData_reg[0]_i_27_13 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_27_14 ),
        .I5(\rdData_reg[0]_i_27_15 ),
        .O(\rdData_reg[0]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdData_reg[0]_i_45 
       (.I0(\rdData_reg[0]_i_27_8 ),
        .I1(\rdData_reg[0]_i_27_9 ),
        .I2(rdAddr[0]),
        .I3(rdAddr[1]),
        .I4(\rdData_reg[0]_i_27_10 ),
        .I5(\rdData_reg[0]_i_27_11 ),
        .O(\rdData_reg[0]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rdData_reg[0]_i_5 
       (.I0(\rdData_reg[0]_i_18_n_0 ),
        .I1(\rdData_reg[0]_i_19_n_0 ),
        .I2(rdAddr[3]),
        .I3(rdAddr[2]),
        .I4(\rdData_reg[0]_i_20_n_0 ),
        .I5(\rdData_reg[0]_i_21_n_0 ),
        .O(\rdData_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rdData_reg[0]_i_6 
       (.I0(\rdData_reg[0]_i_22_n_0 ),
        .I1(\rdData_reg[0]_i_23_n_0 ),
        .I2(rdAddr[5]),
        .I3(rdAddr[4]),
        .I4(\rdData_reg[0]_i_26_n_0 ),
        .I5(\rdData_reg[0]_i_27_n_0 ),
        .O(\rdData_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFFFFFFF)) 
    \rdData_reg[0]_i_7 
       (.I0(S_AXI_ARADDR[5]),
        .I1(S_AXI_ARADDR[4]),
        .I2(state_0),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(S_AXI_ARVALID),
        .I5(S_AXI_ARADDR[6]),
        .O(\rdData_reg[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \rdData_reg[0]_i_8 
       (.I0(S_AXI_ARADDR[5]),
        .I1(state_0),
        .I2(\FSM_sequential_state_reg[1]_1 ),
        .I3(S_AXI_ARVALID),
        .I4(S_AXI_ARADDR[6]),
        .O(\rdData_reg[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdData_reg[0]_i_9 
       (.I0(\rdData_reg[0]_i_28_n_0 ),
        .I1(S_AXI_ARADDR[7]),
        .I2(S_AXI_ARADDR[8]),
        .I3(S_AXI_ARADDR[9]),
        .I4(\rdData_reg[0]_i_29_n_0 ),
        .O(\rdData_reg[0]_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "tdc" *) 
module design_1_top_0_0_tdc
   (tdcOut,
    S_AXI_ACLK,
    S_AXI_ARESETN);
  output tdcOut;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;

  wire S_AXI_ARESETN;
  wire \delay[0]_i_1_n_0 ;
  (* DONT_TOUCH *) wire delay_bufs;
  (* DONT_TOUCH *) wire initial_bufs;
  wire latches;
  wire tdcOut;

  assign initial_bufs = S_AXI_ACLK;
  LUT2 #(
    .INIT(4'h8)) 
    \delay[0]_i_1 
       (.I0(latches),
        .I1(S_AXI_ARESETN),
        .O(\delay[0]_i_1_n_0 ));
  FDRE \delay_reg[0] 
       (.C(initial_bufs),
        .CE(1'b1),
        .D(\delay[0]_i_1_n_0 ),
        .Q(tdcOut),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    initial_bufs_inst
       (.I0(initial_bufs),
        .O(delay_bufs));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latches_reg[0] 
       (.CLR(1'b0),
        .D(delay_bufs),
        .G(initial_bufs),
        .GE(1'b1),
        .Q(latches));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_1_top_0_0_top
   (\FSM_sequential_state_reg[1] ,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_ARADDR,
    S_AXI_AWVALID,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    S_AXI_RREADY,
    S_AXI_ACLK);
  output \FSM_sequential_state_reg[1] ;
  output [0:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  input [9:0]S_AXI_ARADDR;
  input S_AXI_AWVALID;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input S_AXI_RREADY;
  input S_AXI_ACLK;

  wire AxiSupporter1_n_0;
  wire AxiSupporter1_n_2;
  wire AxiSupporter1_n_5;
  wire AxiSupporter1_n_8;
  wire \FSM_sequential_state_reg[1] ;
  wire S_AXI_ACLK;
  wire [9:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWVALID;
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire counterD;
  wire [6:0]counterQ;
  wire \counterQ[1]_i_1_n_0 ;
  wire \counterQ[2]_i_1_n_0 ;
  wire \counterQ[3]_i_1_n_0 ;
  wire \counterQ[4]_i_1_n_0 ;
  wire \counterQ[4]_i_2_n_0 ;
  wire \counterQ[5]_i_1_n_0 ;
  wire \counterQ[6]_i_3_n_0 ;
  wire \counterQ[6]_i_4_n_0 ;
  wire mem;
  wire \mem_reg[10][0]_i_1_n_0 ;
  wire \mem_reg[11][0]_i_1_n_0 ;
  wire \mem_reg[12][0]_i_1_n_0 ;
  wire \mem_reg[13][0]_i_1_n_0 ;
  wire \mem_reg[14][0]_i_1_n_0 ;
  wire \mem_reg[15][0]_i_1_n_0 ;
  wire \mem_reg[16][0]_i_1_n_0 ;
  wire \mem_reg[17][0]_i_1_n_0 ;
  wire \mem_reg[18][0]_i_1_n_0 ;
  wire \mem_reg[19][0]_i_1_n_0 ;
  wire \mem_reg[1][0]_i_1_n_0 ;
  wire \mem_reg[20][0]_i_1_n_0 ;
  wire \mem_reg[21][0]_i_1_n_0 ;
  wire \mem_reg[22][0]_i_1_n_0 ;
  wire \mem_reg[23][0]_i_1_n_0 ;
  wire \mem_reg[24][0]_i_1_n_0 ;
  wire \mem_reg[25][0]_i_1_n_0 ;
  wire \mem_reg[26][0]_i_1_n_0 ;
  wire \mem_reg[27][0]_i_1_n_0 ;
  wire \mem_reg[28][0]_i_1_n_0 ;
  wire \mem_reg[29][0]_i_1_n_0 ;
  wire \mem_reg[2][0]_i_1_n_0 ;
  wire \mem_reg[30][0]_i_1_n_0 ;
  wire \mem_reg[31][0]_i_1_n_0 ;
  wire \mem_reg[32][0]_i_1_n_0 ;
  wire \mem_reg[33][0]_i_1_n_0 ;
  wire \mem_reg[34][0]_i_1_n_0 ;
  wire \mem_reg[35][0]_i_1_n_0 ;
  wire \mem_reg[36][0]_i_1_n_0 ;
  wire \mem_reg[37][0]_i_1_n_0 ;
  wire \mem_reg[38][0]_i_1_n_0 ;
  wire \mem_reg[39][0]_i_1_n_0 ;
  wire \mem_reg[39][0]_i_2_n_0 ;
  wire \mem_reg[3][0]_i_1_n_0 ;
  wire \mem_reg[40][0]_i_1_n_0 ;
  wire \mem_reg[41][0]_i_1_n_0 ;
  wire \mem_reg[42][0]_i_1_n_0 ;
  wire \mem_reg[43][0]_i_1_n_0 ;
  wire \mem_reg[44][0]_i_1_n_0 ;
  wire \mem_reg[45][0]_i_1_n_0 ;
  wire \mem_reg[46][0]_i_1_n_0 ;
  wire \mem_reg[47][0]_i_1_n_0 ;
  wire \mem_reg[47][0]_i_2_n_0 ;
  wire \mem_reg[48][0]_i_1_n_0 ;
  wire \mem_reg[49][0]_i_1_n_0 ;
  wire \mem_reg[4][0]_i_1_n_0 ;
  wire \mem_reg[50][0]_i_1_n_0 ;
  wire \mem_reg[51][0]_i_1_n_0 ;
  wire \mem_reg[52][0]_i_1_n_0 ;
  wire \mem_reg[53][0]_i_1_n_0 ;
  wire \mem_reg[54][0]_i_1_n_0 ;
  wire \mem_reg[55][0]_i_1_n_0 ;
  wire \mem_reg[55][0]_i_2_n_0 ;
  wire \mem_reg[56][0]_i_1_n_0 ;
  wire \mem_reg[57][0]_i_1_n_0 ;
  wire \mem_reg[58][0]_i_1_n_0 ;
  wire \mem_reg[59][0]_i_1_n_0 ;
  wire \mem_reg[5][0]_i_1_n_0 ;
  wire \mem_reg[60][0]_i_1_n_0 ;
  wire \mem_reg[61][0]_i_1_n_0 ;
  wire \mem_reg[62][0]_i_1_n_0 ;
  wire \mem_reg[63][0]_i_1_n_0 ;
  wire \mem_reg[63][0]_i_2_n_0 ;
  wire \mem_reg[64][0]_i_1_n_0 ;
  wire \mem_reg[64][0]_i_2_n_0 ;
  wire \mem_reg[65][0]_i_1_n_0 ;
  wire \mem_reg[66][0]_i_1_n_0 ;
  wire \mem_reg[67][0]_i_1_n_0 ;
  wire \mem_reg[68][0]_i_1_n_0 ;
  wire \mem_reg[68][0]_i_2_n_0 ;
  wire \mem_reg[69][0]_i_1_n_0 ;
  wire \mem_reg[6][0]_i_1_n_0 ;
  wire \mem_reg[70][0]_i_1_n_0 ;
  wire \mem_reg[71][0]_i_1_n_0 ;
  wire \mem_reg[72][0]_i_1_n_0 ;
  wire \mem_reg[73][0]_i_1_n_0 ;
  wire \mem_reg[74][0]_i_1_n_0 ;
  wire \mem_reg[75][0]_i_1_n_0 ;
  wire \mem_reg[76][0]_i_1_n_0 ;
  wire \mem_reg[77][0]_i_1_n_0 ;
  wire \mem_reg[78][0]_i_1_n_0 ;
  wire \mem_reg[79][0]_i_1_n_0 ;
  wire \mem_reg[7][0]_i_1_n_0 ;
  wire \mem_reg[80][0]_i_1_n_0 ;
  wire \mem_reg[80][0]_i_2_n_0 ;
  wire \mem_reg[81][0]_i_1_n_0 ;
  wire \mem_reg[82][0]_i_1_n_0 ;
  wire \mem_reg[83][0]_i_1_n_0 ;
  wire \mem_reg[84][0]_i_1_n_0 ;
  wire \mem_reg[85][0]_i_1_n_0 ;
  wire \mem_reg[86][0]_i_1_n_0 ;
  wire \mem_reg[87][0]_i_1_n_0 ;
  wire \mem_reg[88][0]_i_1_n_0 ;
  wire \mem_reg[89][0]_i_1_n_0 ;
  wire \mem_reg[8][0]_i_1_n_0 ;
  wire \mem_reg[8][0]_i_2_n_0 ;
  wire \mem_reg[90][0]_i_1_n_0 ;
  wire \mem_reg[91][0]_i_1_n_0 ;
  wire \mem_reg[92][0]_i_1_n_0 ;
  wire \mem_reg[92][0]_i_2_n_0 ;
  wire \mem_reg[93][0]_i_1_n_0 ;
  wire \mem_reg[93][0]_i_2_n_0 ;
  wire \mem_reg[94][0]_i_1_n_0 ;
  wire \mem_reg[94][0]_i_2_n_0 ;
  wire \mem_reg[95][0]_i_1_n_0 ;
  wire \mem_reg[95][0]_i_2_n_0 ;
  wire \mem_reg[96][0]_i_1_n_0 ;
  wire \mem_reg[96][0]_i_2_n_0 ;
  wire \mem_reg[97][0]_i_1_n_0 ;
  wire \mem_reg[97][0]_i_2_n_0 ;
  wire \mem_reg[98][0]_i_1_n_0 ;
  wire \mem_reg[98][0]_i_2_n_0 ;
  wire \mem_reg[99][0]_i_1_n_0 ;
  wire \mem_reg[99][0]_i_2_n_0 ;
  wire \mem_reg[99][0]_i_3_n_0 ;
  wire \mem_reg[9][0]_i_1_n_0 ;
  wire \mem_reg_n_0_[0][0] ;
  wire \mem_reg_n_0_[10][0] ;
  wire \mem_reg_n_0_[11][0] ;
  wire \mem_reg_n_0_[12][0] ;
  wire \mem_reg_n_0_[13][0] ;
  wire \mem_reg_n_0_[14][0] ;
  wire \mem_reg_n_0_[15][0] ;
  wire \mem_reg_n_0_[16][0] ;
  wire \mem_reg_n_0_[17][0] ;
  wire \mem_reg_n_0_[18][0] ;
  wire \mem_reg_n_0_[19][0] ;
  wire \mem_reg_n_0_[1][0] ;
  wire \mem_reg_n_0_[20][0] ;
  wire \mem_reg_n_0_[21][0] ;
  wire \mem_reg_n_0_[22][0] ;
  wire \mem_reg_n_0_[23][0] ;
  wire \mem_reg_n_0_[24][0] ;
  wire \mem_reg_n_0_[25][0] ;
  wire \mem_reg_n_0_[26][0] ;
  wire \mem_reg_n_0_[27][0] ;
  wire \mem_reg_n_0_[28][0] ;
  wire \mem_reg_n_0_[29][0] ;
  wire \mem_reg_n_0_[2][0] ;
  wire \mem_reg_n_0_[30][0] ;
  wire \mem_reg_n_0_[31][0] ;
  wire \mem_reg_n_0_[32][0] ;
  wire \mem_reg_n_0_[33][0] ;
  wire \mem_reg_n_0_[34][0] ;
  wire \mem_reg_n_0_[35][0] ;
  wire \mem_reg_n_0_[36][0] ;
  wire \mem_reg_n_0_[37][0] ;
  wire \mem_reg_n_0_[38][0] ;
  wire \mem_reg_n_0_[39][0] ;
  wire \mem_reg_n_0_[3][0] ;
  wire \mem_reg_n_0_[40][0] ;
  wire \mem_reg_n_0_[41][0] ;
  wire \mem_reg_n_0_[42][0] ;
  wire \mem_reg_n_0_[43][0] ;
  wire \mem_reg_n_0_[44][0] ;
  wire \mem_reg_n_0_[45][0] ;
  wire \mem_reg_n_0_[46][0] ;
  wire \mem_reg_n_0_[47][0] ;
  wire \mem_reg_n_0_[48][0] ;
  wire \mem_reg_n_0_[49][0] ;
  wire \mem_reg_n_0_[4][0] ;
  wire \mem_reg_n_0_[50][0] ;
  wire \mem_reg_n_0_[51][0] ;
  wire \mem_reg_n_0_[52][0] ;
  wire \mem_reg_n_0_[53][0] ;
  wire \mem_reg_n_0_[54][0] ;
  wire \mem_reg_n_0_[55][0] ;
  wire \mem_reg_n_0_[56][0] ;
  wire \mem_reg_n_0_[57][0] ;
  wire \mem_reg_n_0_[58][0] ;
  wire \mem_reg_n_0_[59][0] ;
  wire \mem_reg_n_0_[5][0] ;
  wire \mem_reg_n_0_[60][0] ;
  wire \mem_reg_n_0_[61][0] ;
  wire \mem_reg_n_0_[62][0] ;
  wire \mem_reg_n_0_[63][0] ;
  wire \mem_reg_n_0_[64][0] ;
  wire \mem_reg_n_0_[65][0] ;
  wire \mem_reg_n_0_[66][0] ;
  wire \mem_reg_n_0_[67][0] ;
  wire \mem_reg_n_0_[68][0] ;
  wire \mem_reg_n_0_[69][0] ;
  wire \mem_reg_n_0_[6][0] ;
  wire \mem_reg_n_0_[70][0] ;
  wire \mem_reg_n_0_[71][0] ;
  wire \mem_reg_n_0_[72][0] ;
  wire \mem_reg_n_0_[73][0] ;
  wire \mem_reg_n_0_[74][0] ;
  wire \mem_reg_n_0_[75][0] ;
  wire \mem_reg_n_0_[76][0] ;
  wire \mem_reg_n_0_[77][0] ;
  wire \mem_reg_n_0_[78][0] ;
  wire \mem_reg_n_0_[79][0] ;
  wire \mem_reg_n_0_[7][0] ;
  wire \mem_reg_n_0_[80][0] ;
  wire \mem_reg_n_0_[81][0] ;
  wire \mem_reg_n_0_[82][0] ;
  wire \mem_reg_n_0_[83][0] ;
  wire \mem_reg_n_0_[84][0] ;
  wire \mem_reg_n_0_[85][0] ;
  wire \mem_reg_n_0_[86][0] ;
  wire \mem_reg_n_0_[87][0] ;
  wire \mem_reg_n_0_[88][0] ;
  wire \mem_reg_n_0_[89][0] ;
  wire \mem_reg_n_0_[8][0] ;
  wire \mem_reg_n_0_[90][0] ;
  wire \mem_reg_n_0_[91][0] ;
  wire \mem_reg_n_0_[92][0] ;
  wire \mem_reg_n_0_[93][0] ;
  wire \mem_reg_n_0_[94][0] ;
  wire \mem_reg_n_0_[95][0] ;
  wire \mem_reg_n_0_[96][0] ;
  wire \mem_reg_n_0_[97][0] ;
  wire \mem_reg_n_0_[98][0] ;
  wire \mem_reg_n_0_[99][0] ;
  wire \mem_reg_n_0_[9][0] ;
  wire rdData;
  wire rdData__0;
  wire state;
  wire tdcOut;

  design_1_top_0_0_Axi4LiteSupporter AxiSupporter1
       (.FSM_sequential_state_reg(\counterQ[4]_i_2_n_0 ),
        .\FSM_sequential_state_reg[1]_0 (AxiSupporter1_n_0),
        .\FSM_sequential_state_reg[1]_1 (\FSM_sequential_state_reg[1] ),
        .\FSM_sequential_state_reg[1]_2 (AxiSupporter1_n_2),
        .\FSM_sequential_state_reg[1]_3 (AxiSupporter1_n_8),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARADDR_5_sp_1(AxiSupporter1_n_5),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .counterD(counterD),
        .counterQ(counterQ[0]),
        .rdData(rdData),
        .rdData__0(rdData__0),
        .\rdData_reg[0]_i_1_0 (\mem_reg_n_0_[97][0] ),
        .\rdData_reg[0]_i_1_1 (\mem_reg_n_0_[99][0] ),
        .\rdData_reg[0]_i_1_2 (\mem_reg_n_0_[96][0] ),
        .\rdData_reg[0]_i_1_3 (\mem_reg_n_0_[98][0] ),
        .\rdData_reg[0]_i_22_0 (\mem_reg_n_0_[29][0] ),
        .\rdData_reg[0]_i_22_1 (\mem_reg_n_0_[31][0] ),
        .\rdData_reg[0]_i_22_10 (\mem_reg_n_0_[24][0] ),
        .\rdData_reg[0]_i_22_11 (\mem_reg_n_0_[26][0] ),
        .\rdData_reg[0]_i_22_12 (\mem_reg_n_0_[17][0] ),
        .\rdData_reg[0]_i_22_13 (\mem_reg_n_0_[19][0] ),
        .\rdData_reg[0]_i_22_14 (\mem_reg_n_0_[16][0] ),
        .\rdData_reg[0]_i_22_15 (\mem_reg_n_0_[18][0] ),
        .\rdData_reg[0]_i_22_2 (\mem_reg_n_0_[28][0] ),
        .\rdData_reg[0]_i_22_3 (\mem_reg_n_0_[30][0] ),
        .\rdData_reg[0]_i_22_4 (\mem_reg_n_0_[21][0] ),
        .\rdData_reg[0]_i_22_5 (\mem_reg_n_0_[23][0] ),
        .\rdData_reg[0]_i_22_6 (\mem_reg_n_0_[20][0] ),
        .\rdData_reg[0]_i_22_7 (\mem_reg_n_0_[22][0] ),
        .\rdData_reg[0]_i_22_8 (\mem_reg_n_0_[25][0] ),
        .\rdData_reg[0]_i_22_9 (\mem_reg_n_0_[27][0] ),
        .\rdData_reg[0]_i_23_0 (\mem_reg_n_0_[61][0] ),
        .\rdData_reg[0]_i_23_1 (\mem_reg_n_0_[63][0] ),
        .\rdData_reg[0]_i_23_10 (\mem_reg_n_0_[56][0] ),
        .\rdData_reg[0]_i_23_11 (\mem_reg_n_0_[58][0] ),
        .\rdData_reg[0]_i_23_12 (\mem_reg_n_0_[49][0] ),
        .\rdData_reg[0]_i_23_13 (\mem_reg_n_0_[51][0] ),
        .\rdData_reg[0]_i_23_14 (\mem_reg_n_0_[48][0] ),
        .\rdData_reg[0]_i_23_15 (\mem_reg_n_0_[50][0] ),
        .\rdData_reg[0]_i_23_2 (\mem_reg_n_0_[60][0] ),
        .\rdData_reg[0]_i_23_3 (\mem_reg_n_0_[62][0] ),
        .\rdData_reg[0]_i_23_4 (\mem_reg_n_0_[53][0] ),
        .\rdData_reg[0]_i_23_5 (\mem_reg_n_0_[55][0] ),
        .\rdData_reg[0]_i_23_6 (\mem_reg_n_0_[52][0] ),
        .\rdData_reg[0]_i_23_7 (\mem_reg_n_0_[54][0] ),
        .\rdData_reg[0]_i_23_8 (\mem_reg_n_0_[57][0] ),
        .\rdData_reg[0]_i_23_9 (\mem_reg_n_0_[59][0] ),
        .\rdData_reg[0]_i_26_0 (\mem_reg_n_0_[13][0] ),
        .\rdData_reg[0]_i_26_1 (\mem_reg_n_0_[15][0] ),
        .\rdData_reg[0]_i_26_10 (\mem_reg_n_0_[8][0] ),
        .\rdData_reg[0]_i_26_11 (\mem_reg_n_0_[10][0] ),
        .\rdData_reg[0]_i_26_12 (\mem_reg_n_0_[1][0] ),
        .\rdData_reg[0]_i_26_13 (\mem_reg_n_0_[3][0] ),
        .\rdData_reg[0]_i_26_14 (\mem_reg_n_0_[0][0] ),
        .\rdData_reg[0]_i_26_15 (\mem_reg_n_0_[2][0] ),
        .\rdData_reg[0]_i_26_2 (\mem_reg_n_0_[12][0] ),
        .\rdData_reg[0]_i_26_3 (\mem_reg_n_0_[14][0] ),
        .\rdData_reg[0]_i_26_4 (\mem_reg_n_0_[5][0] ),
        .\rdData_reg[0]_i_26_5 (\mem_reg_n_0_[7][0] ),
        .\rdData_reg[0]_i_26_6 (\mem_reg_n_0_[4][0] ),
        .\rdData_reg[0]_i_26_7 (\mem_reg_n_0_[6][0] ),
        .\rdData_reg[0]_i_26_8 (\mem_reg_n_0_[9][0] ),
        .\rdData_reg[0]_i_26_9 (\mem_reg_n_0_[11][0] ),
        .\rdData_reg[0]_i_27_0 (\mem_reg_n_0_[45][0] ),
        .\rdData_reg[0]_i_27_1 (\mem_reg_n_0_[47][0] ),
        .\rdData_reg[0]_i_27_10 (\mem_reg_n_0_[40][0] ),
        .\rdData_reg[0]_i_27_11 (\mem_reg_n_0_[42][0] ),
        .\rdData_reg[0]_i_27_12 (\mem_reg_n_0_[33][0] ),
        .\rdData_reg[0]_i_27_13 (\mem_reg_n_0_[35][0] ),
        .\rdData_reg[0]_i_27_14 (\mem_reg_n_0_[32][0] ),
        .\rdData_reg[0]_i_27_15 (\mem_reg_n_0_[34][0] ),
        .\rdData_reg[0]_i_27_2 (\mem_reg_n_0_[44][0] ),
        .\rdData_reg[0]_i_27_3 (\mem_reg_n_0_[46][0] ),
        .\rdData_reg[0]_i_27_4 (\mem_reg_n_0_[37][0] ),
        .\rdData_reg[0]_i_27_5 (\mem_reg_n_0_[39][0] ),
        .\rdData_reg[0]_i_27_6 (\mem_reg_n_0_[36][0] ),
        .\rdData_reg[0]_i_27_7 (\mem_reg_n_0_[38][0] ),
        .\rdData_reg[0]_i_27_8 (\mem_reg_n_0_[41][0] ),
        .\rdData_reg[0]_i_27_9 (\mem_reg_n_0_[43][0] ),
        .\rdData_reg[0]_i_3_0 (\mem_reg_n_0_[93][0] ),
        .\rdData_reg[0]_i_3_1 (\mem_reg_n_0_[95][0] ),
        .\rdData_reg[0]_i_3_10 (\mem_reg_n_0_[88][0] ),
        .\rdData_reg[0]_i_3_11 (\mem_reg_n_0_[90][0] ),
        .\rdData_reg[0]_i_3_12 (\mem_reg_n_0_[81][0] ),
        .\rdData_reg[0]_i_3_13 (\mem_reg_n_0_[83][0] ),
        .\rdData_reg[0]_i_3_14 (\mem_reg_n_0_[80][0] ),
        .\rdData_reg[0]_i_3_15 (\mem_reg_n_0_[82][0] ),
        .\rdData_reg[0]_i_3_2 (\mem_reg_n_0_[92][0] ),
        .\rdData_reg[0]_i_3_3 (\mem_reg_n_0_[94][0] ),
        .\rdData_reg[0]_i_3_4 (\mem_reg_n_0_[85][0] ),
        .\rdData_reg[0]_i_3_5 (\mem_reg_n_0_[87][0] ),
        .\rdData_reg[0]_i_3_6 (\mem_reg_n_0_[84][0] ),
        .\rdData_reg[0]_i_3_7 (\mem_reg_n_0_[86][0] ),
        .\rdData_reg[0]_i_3_8 (\mem_reg_n_0_[89][0] ),
        .\rdData_reg[0]_i_3_9 (\mem_reg_n_0_[91][0] ),
        .\rdData_reg[0]_i_5_0 (\mem_reg_n_0_[77][0] ),
        .\rdData_reg[0]_i_5_1 (\mem_reg_n_0_[79][0] ),
        .\rdData_reg[0]_i_5_10 (\mem_reg_n_0_[72][0] ),
        .\rdData_reg[0]_i_5_11 (\mem_reg_n_0_[74][0] ),
        .\rdData_reg[0]_i_5_12 (\mem_reg_n_0_[65][0] ),
        .\rdData_reg[0]_i_5_13 (\mem_reg_n_0_[67][0] ),
        .\rdData_reg[0]_i_5_14 (\mem_reg_n_0_[64][0] ),
        .\rdData_reg[0]_i_5_15 (\mem_reg_n_0_[66][0] ),
        .\rdData_reg[0]_i_5_2 (\mem_reg_n_0_[76][0] ),
        .\rdData_reg[0]_i_5_3 (\mem_reg_n_0_[78][0] ),
        .\rdData_reg[0]_i_5_4 (\mem_reg_n_0_[69][0] ),
        .\rdData_reg[0]_i_5_5 (\mem_reg_n_0_[71][0] ),
        .\rdData_reg[0]_i_5_6 (\mem_reg_n_0_[68][0] ),
        .\rdData_reg[0]_i_5_7 (\mem_reg_n_0_[70][0] ),
        .\rdData_reg[0]_i_5_8 (\mem_reg_n_0_[73][0] ),
        .\rdData_reg[0]_i_5_9 (\mem_reg_n_0_[75][0] ),
        .state(state));
  (* FSM_ENCODED_STATES = "IDLE:0,READ:1," *) 
  FDRE FSM_sequential_state_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(AxiSupporter1_n_8),
        .Q(state),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \counterQ[1]_i_1 
       (.I0(\counterQ[4]_i_2_n_0 ),
        .I1(counterQ[0]),
        .I2(counterQ[1]),
        .O(\counterQ[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \counterQ[2]_i_1 
       (.I0(\counterQ[4]_i_2_n_0 ),
        .I1(counterQ[2]),
        .I2(counterQ[0]),
        .I3(counterQ[1]),
        .O(\counterQ[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \counterQ[3]_i_1 
       (.I0(\counterQ[4]_i_2_n_0 ),
        .I1(counterQ[3]),
        .I2(counterQ[2]),
        .I3(counterQ[1]),
        .I4(counterQ[0]),
        .O(\counterQ[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \counterQ[4]_i_1 
       (.I0(\counterQ[4]_i_2_n_0 ),
        .I1(counterQ[4]),
        .I2(counterQ[3]),
        .I3(counterQ[0]),
        .I4(counterQ[1]),
        .I5(counterQ[2]),
        .O(\counterQ[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7777777F)) 
    \counterQ[4]_i_2 
       (.I0(counterQ[6]),
        .I1(counterQ[5]),
        .I2(counterQ[2]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\counterQ[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h34444444444C444C)) 
    \counterQ[5]_i_1 
       (.I0(counterQ[6]),
        .I1(counterQ[5]),
        .I2(counterQ[4]),
        .I3(counterQ[2]),
        .I4(\counterQ[6]_i_4_n_0 ),
        .I5(counterQ[3]),
        .O(\counterQ[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6222222222222A2A)) 
    \counterQ[6]_i_3 
       (.I0(counterQ[6]),
        .I1(counterQ[5]),
        .I2(counterQ[3]),
        .I3(\counterQ[6]_i_4_n_0 ),
        .I4(counterQ[2]),
        .I5(counterQ[4]),
        .O(\counterQ[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counterQ[6]_i_4 
       (.I0(counterQ[0]),
        .I1(counterQ[1]),
        .O(\counterQ[6]_i_4_n_0 ));
  FDRE \counterQ_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(AxiSupporter1_n_2),
        .Q(counterQ[0]),
        .R(1'b0));
  FDRE \counterQ_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(counterD),
        .D(\counterQ[1]_i_1_n_0 ),
        .Q(counterQ[1]),
        .R(AxiSupporter1_n_0));
  FDRE \counterQ_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(counterD),
        .D(\counterQ[2]_i_1_n_0 ),
        .Q(counterQ[2]),
        .R(AxiSupporter1_n_0));
  FDRE \counterQ_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(counterD),
        .D(\counterQ[3]_i_1_n_0 ),
        .Q(counterQ[3]),
        .R(AxiSupporter1_n_0));
  FDRE \counterQ_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(counterD),
        .D(\counterQ[4]_i_1_n_0 ),
        .Q(counterQ[4]),
        .R(AxiSupporter1_n_0));
  FDRE \counterQ_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(counterD),
        .D(\counterQ[5]_i_1_n_0 ),
        .Q(counterQ[5]),
        .R(AxiSupporter1_n_0));
  FDRE \counterQ_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(counterD),
        .D(\counterQ[6]_i_3_n_0 ),
        .Q(counterQ[6]),
        .R(AxiSupporter1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(mem),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[0][0] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \mem_reg[0][0]_i_1 
       (.I0(counterQ[2]),
        .I1(counterQ[0]),
        .I2(counterQ[1]),
        .I3(\mem_reg[39][0]_i_2_n_0 ),
        .I4(\mem_reg[68][0]_i_2_n_0 ),
        .O(mem));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[10][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[10][0] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[10][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[98][0]_i_2_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[10][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[11][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[11][0] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[11][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[99][0]_i_3_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[11][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[12][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[12][0] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[12][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[92][0]_i_2_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[12][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[13][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[13][0] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[13][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[93][0]_i_2_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[13][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[14][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[14][0] ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[14][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[94][0]_i_2_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[14][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[15][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[15][0] ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[15][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[95][0]_i_2_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[15][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[16][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[16][0] ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \mem_reg[16][0]_i_1 
       (.I0(\mem_reg[64][0]_i_2_n_0 ),
        .I1(counterQ[5]),
        .I2(counterQ[4]),
        .I3(counterQ[2]),
        .I4(counterQ[3]),
        .I5(\mem_reg[39][0]_i_2_n_0 ),
        .O(\mem_reg[16][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[17][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[17][0] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[17][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[97][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[17][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[18][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[18][0] ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[18][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[98][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[18][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[19][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[19][0] ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[19][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[99][0]_i_3_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[19][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[1][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[1][0] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \mem_reg[1][0]_i_1 
       (.I0(counterQ[3]),
        .I1(counterQ[2]),
        .I2(counterQ[0]),
        .I3(counterQ[1]),
        .I4(\mem_reg[8][0]_i_2_n_0 ),
        .O(\mem_reg[1][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[20][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[20][0] ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[20][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[92][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[20][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[21][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[21][0] ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[21][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[93][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[21][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[22][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[22][0] ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[22][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[94][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[22][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[23][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[23][0] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[23][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[95][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[23][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[24][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[24][0] ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[24][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[96][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[24][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[25][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[25][0] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[25][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[97][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[25][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[26][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[26][0] ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[26][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[98][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[26][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[27][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[27][0] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[27][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[99][0]_i_3_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[27][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[28][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[28][0] ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[28][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[92][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[28][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[29][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[29][0] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[29][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[93][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[29][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[2][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[2][0] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \mem_reg[2][0]_i_1 
       (.I0(counterQ[3]),
        .I1(counterQ[2]),
        .I2(counterQ[1]),
        .I3(counterQ[0]),
        .I4(\mem_reg[8][0]_i_2_n_0 ),
        .O(\mem_reg[2][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[30][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[30][0] ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[30][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[94][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[30][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[31][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[31][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[31][0] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[31][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[95][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[31][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[32][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[32][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[32][0] ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \mem_reg[32][0]_i_1 
       (.I0(\mem_reg[64][0]_i_2_n_0 ),
        .I1(counterQ[4]),
        .I2(counterQ[5]),
        .I3(counterQ[2]),
        .I4(counterQ[3]),
        .I5(\mem_reg[39][0]_i_2_n_0 ),
        .O(\mem_reg[32][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[33][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[33][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[33][0] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[33][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[97][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[33][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[34][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[34][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[34][0] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[34][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[98][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[34][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[35][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[35][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[35][0] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[35][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[99][0]_i_3_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[35][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[36][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[36][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[36][0] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \mem_reg[36][0]_i_1 
       (.I0(counterQ[4]),
        .I1(counterQ[3]),
        .I2(counterQ[5]),
        .I3(\mem_reg[39][0]_i_2_n_0 ),
        .I4(\mem_reg[92][0]_i_2_n_0 ),
        .O(\mem_reg[36][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[37][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[37][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[37][0] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \mem_reg[37][0]_i_1 
       (.I0(counterQ[4]),
        .I1(counterQ[3]),
        .I2(counterQ[5]),
        .I3(\mem_reg[39][0]_i_2_n_0 ),
        .I4(\mem_reg[93][0]_i_2_n_0 ),
        .O(\mem_reg[37][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[38][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[38][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[38][0] ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \mem_reg[38][0]_i_1 
       (.I0(counterQ[4]),
        .I1(counterQ[3]),
        .I2(counterQ[5]),
        .I3(\mem_reg[39][0]_i_2_n_0 ),
        .I4(\mem_reg[94][0]_i_2_n_0 ),
        .O(\mem_reg[38][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[39][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[39][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[39][0] ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \mem_reg[39][0]_i_1 
       (.I0(counterQ[4]),
        .I1(counterQ[3]),
        .I2(counterQ[5]),
        .I3(\mem_reg[39][0]_i_2_n_0 ),
        .I4(\mem_reg[95][0]_i_2_n_0 ),
        .O(\mem_reg[39][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_reg[39][0]_i_2 
       (.I0(state),
        .I1(counterQ[6]),
        .O(\mem_reg[39][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[3][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[3][0] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem_reg[3][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[99][0]_i_3_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[3][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[40][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[40][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[40][0] ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \mem_reg[40][0]_i_1 
       (.I0(\mem_reg[47][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[40][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[41][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[41][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[41][0] ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mem_reg[41][0]_i_1 
       (.I0(\mem_reg[47][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[41][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[42][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[42][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[42][0] ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mem_reg[42][0]_i_1 
       (.I0(\mem_reg[47][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[42][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[43][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[43][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[43][0] ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \mem_reg[43][0]_i_1 
       (.I0(\mem_reg[47][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[43][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[44][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[44][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[44][0] ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \mem_reg[44][0]_i_1 
       (.I0(\mem_reg[47][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[44][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[45][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[45][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[45][0] ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \mem_reg[45][0]_i_1 
       (.I0(\mem_reg[47][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[45][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[46][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[46][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[46][0] ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mem_reg[46][0]_i_1 
       (.I0(\mem_reg[47][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[46][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[47][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[47][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[47][0] ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mem_reg[47][0]_i_1 
       (.I0(\mem_reg[47][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[47][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \mem_reg[47][0]_i_2 
       (.I0(state),
        .I1(counterQ[6]),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[47][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[48][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[48][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[48][0] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \mem_reg[48][0]_i_1 
       (.I0(\mem_reg[55][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[48][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[49][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[49][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[49][0] ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mem_reg[49][0]_i_1 
       (.I0(\mem_reg[55][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[49][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[4][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[4][0] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \mem_reg[4][0]_i_1 
       (.I0(counterQ[0]),
        .I1(counterQ[1]),
        .I2(counterQ[2]),
        .I3(counterQ[3]),
        .I4(\mem_reg[8][0]_i_2_n_0 ),
        .O(\mem_reg[4][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[50][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[50][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[50][0] ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mem_reg[50][0]_i_1 
       (.I0(\mem_reg[55][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[50][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[51][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[51][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[51][0] ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \mem_reg[51][0]_i_1 
       (.I0(\mem_reg[55][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[51][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[52][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[52][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[52][0] ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \mem_reg[52][0]_i_1 
       (.I0(\mem_reg[55][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[52][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[53][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[53][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[53][0] ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \mem_reg[53][0]_i_1 
       (.I0(\mem_reg[55][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[53][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[54][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[54][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[54][0] ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mem_reg[54][0]_i_1 
       (.I0(\mem_reg[55][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[54][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[55][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[55][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[55][0] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mem_reg[55][0]_i_1 
       (.I0(\mem_reg[55][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[55][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \mem_reg[55][0]_i_2 
       (.I0(state),
        .I1(counterQ[6]),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[55][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[56][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[56][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[56][0] ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \mem_reg[56][0]_i_1 
       (.I0(\mem_reg[63][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[56][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[57][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[57][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[57][0] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mem_reg[57][0]_i_1 
       (.I0(\mem_reg[63][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[57][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[58][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[58][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[58][0] ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mem_reg[58][0]_i_1 
       (.I0(\mem_reg[63][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[58][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[59][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[59][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[59][0] ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \mem_reg[59][0]_i_1 
       (.I0(\mem_reg[63][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[59][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[5][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[5][0] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem_reg[5][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[93][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[5][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[60][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[60][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[60][0] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \mem_reg[60][0]_i_1 
       (.I0(\mem_reg[63][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[60][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[61][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[61][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[61][0] ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \mem_reg[61][0]_i_1 
       (.I0(\mem_reg[63][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[61][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[62][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[62][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[62][0] ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mem_reg[62][0]_i_1 
       (.I0(\mem_reg[63][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[62][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[63][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[63][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[63][0] ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mem_reg[63][0]_i_1 
       (.I0(\mem_reg[63][0]_i_2_n_0 ),
        .I1(counterQ[1]),
        .I2(counterQ[0]),
        .I3(counterQ[2]),
        .O(\mem_reg[63][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \mem_reg[63][0]_i_2 
       (.I0(state),
        .I1(counterQ[6]),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[63][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[64][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[64][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[64][0] ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \mem_reg[64][0]_i_1 
       (.I0(\mem_reg[64][0]_i_2_n_0 ),
        .I1(counterQ[2]),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .I5(\mem_reg[99][0]_i_2_n_0 ),
        .O(\mem_reg[64][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mem_reg[64][0]_i_2 
       (.I0(counterQ[0]),
        .I1(counterQ[1]),
        .O(\mem_reg[64][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[65][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[65][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[65][0] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \mem_reg[65][0]_i_1 
       (.I0(\mem_reg[68][0]_i_2_n_0 ),
        .I1(counterQ[2]),
        .I2(counterQ[0]),
        .I3(counterQ[1]),
        .I4(\mem_reg[99][0]_i_2_n_0 ),
        .O(\mem_reg[65][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[66][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[66][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[66][0] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \mem_reg[66][0]_i_1 
       (.I0(\mem_reg[68][0]_i_2_n_0 ),
        .I1(counterQ[2]),
        .I2(counterQ[0]),
        .I3(counterQ[1]),
        .I4(\mem_reg[99][0]_i_2_n_0 ),
        .O(\mem_reg[66][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[67][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[67][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[67][0] ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem_reg[67][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[99][0]_i_3_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[67][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[68][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[68][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[68][0] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[68][0]_i_1 
       (.I0(\mem_reg[68][0]_i_2_n_0 ),
        .I1(counterQ[2]),
        .I2(counterQ[0]),
        .I3(counterQ[1]),
        .I4(\mem_reg[99][0]_i_2_n_0 ),
        .O(\mem_reg[68][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \mem_reg[68][0]_i_2 
       (.I0(counterQ[5]),
        .I1(counterQ[3]),
        .I2(counterQ[4]),
        .O(\mem_reg[68][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[69][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[69][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[69][0] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem_reg[69][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[93][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[69][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[6][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[6][0] ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem_reg[6][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[94][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[6][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[70][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[70][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[70][0] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem_reg[70][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[94][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[70][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[71][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[71][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[71][0] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem_reg[71][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[95][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[71][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[72][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[72][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[72][0] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[72][0]_i_1 
       (.I0(\mem_reg[96][0]_i_2_n_0 ),
        .I1(counterQ[3]),
        .I2(counterQ[5]),
        .I3(counterQ[4]),
        .I4(\mem_reg[99][0]_i_2_n_0 ),
        .O(\mem_reg[72][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[73][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[73][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[73][0] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[73][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[97][0]_i_2_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[73][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[74][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[74][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[74][0] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[74][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[98][0]_i_2_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[74][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[75][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[75][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[75][0] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[75][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[99][0]_i_3_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[75][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[76][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[76][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[76][0] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[76][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[92][0]_i_2_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[76][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[77][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[77][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[77][0] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[77][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[93][0]_i_2_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[77][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[78][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[78][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[78][0] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[78][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[94][0]_i_2_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[78][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[79][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[79][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[79][0] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[79][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[95][0]_i_2_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[79][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[7][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[7][0] ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem_reg[7][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[95][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[7][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[80][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[80][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[80][0] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \mem_reg[80][0]_i_1 
       (.I0(\mem_reg[80][0]_i_2_n_0 ),
        .I1(counterQ[2]),
        .I2(counterQ[0]),
        .I3(counterQ[1]),
        .I4(\mem_reg[99][0]_i_2_n_0 ),
        .O(\mem_reg[80][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \mem_reg[80][0]_i_2 
       (.I0(counterQ[5]),
        .I1(counterQ[3]),
        .I2(counterQ[4]),
        .O(\mem_reg[80][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[81][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[81][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[81][0] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[81][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[97][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[81][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[82][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[82][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[82][0] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[82][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[98][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[82][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[83][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[83][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[83][0] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[83][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[99][0]_i_3_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[83][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[84][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[84][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[84][0] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[84][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[92][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[84][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[85][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[85][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[85][0] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[85][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[93][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[85][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[86][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[86][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[86][0] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[86][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[94][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[86][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[87][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[87][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[87][0] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem_reg[87][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[95][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[87][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[88][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[88][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[88][0] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[88][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[96][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[88][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[89][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[89][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[89][0] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[89][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[97][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[89][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[8][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[8][0] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \mem_reg[8][0]_i_1 
       (.I0(counterQ[0]),
        .I1(counterQ[1]),
        .I2(counterQ[3]),
        .I3(counterQ[2]),
        .I4(\mem_reg[8][0]_i_2_n_0 ),
        .O(\mem_reg[8][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \mem_reg[8][0]_i_2 
       (.I0(state),
        .I1(counterQ[6]),
        .I2(counterQ[4]),
        .I3(counterQ[5]),
        .O(\mem_reg[8][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[90][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[90][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[90][0] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[90][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[98][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[90][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[91][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[91][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[91][0] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[91][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[99][0]_i_3_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[91][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[92][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[92][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[92][0] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[92][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[92][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[92][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_reg[92][0]_i_2 
       (.I0(counterQ[2]),
        .I1(counterQ[0]),
        .I2(counterQ[1]),
        .O(\mem_reg[92][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[93][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[93][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[93][0] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[93][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[93][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[93][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \mem_reg[93][0]_i_2 
       (.I0(counterQ[2]),
        .I1(counterQ[0]),
        .I2(counterQ[1]),
        .O(\mem_reg[93][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[94][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[94][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[94][0] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[94][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[94][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[94][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \mem_reg[94][0]_i_2 
       (.I0(counterQ[2]),
        .I1(counterQ[0]),
        .I2(counterQ[1]),
        .O(\mem_reg[94][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[95][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[95][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[95][0] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_reg[95][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[95][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[95][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mem_reg[95][0]_i_2 
       (.I0(counterQ[2]),
        .I1(counterQ[0]),
        .I2(counterQ[1]),
        .O(\mem_reg[95][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[96][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[96][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[96][0] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \mem_reg[96][0]_i_1 
       (.I0(counterQ[5]),
        .I1(counterQ[3]),
        .I2(counterQ[4]),
        .I3(\mem_reg[96][0]_i_2_n_0 ),
        .I4(\mem_reg[99][0]_i_2_n_0 ),
        .O(\mem_reg[96][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \mem_reg[96][0]_i_2 
       (.I0(counterQ[2]),
        .I1(counterQ[0]),
        .I2(counterQ[1]),
        .O(\mem_reg[96][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[97][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[97][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[97][0] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[97][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[97][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[97][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \mem_reg[97][0]_i_2 
       (.I0(counterQ[2]),
        .I1(counterQ[0]),
        .I2(counterQ[1]),
        .O(\mem_reg[97][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[98][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[98][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[98][0] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[98][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[98][0]_i_2_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[98][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \mem_reg[98][0]_i_2 
       (.I0(counterQ[2]),
        .I1(counterQ[0]),
        .I2(counterQ[1]),
        .O(\mem_reg[98][0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[99][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[99][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[99][0] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[99][0]_i_1 
       (.I0(\mem_reg[99][0]_i_2_n_0 ),
        .I1(\mem_reg[99][0]_i_3_n_0 ),
        .I2(counterQ[5]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .O(\mem_reg[99][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222222A00000000)) 
    \mem_reg[99][0]_i_2 
       (.I0(state),
        .I1(counterQ[5]),
        .I2(counterQ[2]),
        .I3(counterQ[3]),
        .I4(counterQ[4]),
        .I5(counterQ[6]),
        .O(\mem_reg[99][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \mem_reg[99][0]_i_3 
       (.I0(counterQ[2]),
        .I1(counterQ[0]),
        .I2(counterQ[1]),
        .O(\mem_reg[99][0]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][0] 
       (.CLR(1'b0),
        .D(tdcOut),
        .G(\mem_reg[9][0]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[9][0] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem_reg[9][0]_i_1 
       (.I0(\mem_reg[39][0]_i_2_n_0 ),
        .I1(\mem_reg[97][0]_i_2_n_0 ),
        .I2(counterQ[3]),
        .I3(counterQ[5]),
        .I4(counterQ[4]),
        .O(\mem_reg[9][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rdData_reg[0] 
       (.CLR(1'b0),
        .D(AxiSupporter1_n_5),
        .G(rdData__0),
        .GE(1'b1),
        .Q(rdData));
  design_1_top_0_0_tdc tdc1
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .tdcOut(tdcOut));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
