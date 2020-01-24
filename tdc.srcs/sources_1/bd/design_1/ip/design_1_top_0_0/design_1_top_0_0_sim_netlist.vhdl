-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Jan 24 17:16:33 2020
-- Host        : patricknaughton01 running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/patricknaughton01/Documents/WashU/School/Sem6/ESE498/tdc/tdc.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_Axi4LiteSupporter is
  port (
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_2\ : out STD_LOGIC;
    counterD : out STD_LOGIC;
    \rdData__0\ : out STD_LOGIC;
    S_AXI_ARADDR_5_sp_1 : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_3\ : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    state : in STD_LOGIC;
    FSM_sequential_state_reg : in STD_LOGIC;
    counterQ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rdData_reg[0]_i_1_0\ : in STD_LOGIC;
    \rdData_reg[0]_i_1_1\ : in STD_LOGIC;
    \rdData_reg[0]_i_1_2\ : in STD_LOGIC;
    \rdData_reg[0]_i_1_3\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_0\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_1\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_2\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_3\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_4\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_5\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_6\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_7\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_8\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_9\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_10\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_11\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_12\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_13\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_14\ : in STD_LOGIC;
    \rdData_reg[0]_i_5_15\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_0\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_1\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_2\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_3\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_4\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_5\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_6\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_7\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_8\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_9\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_10\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_11\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_12\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_13\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_14\ : in STD_LOGIC;
    \rdData_reg[0]_i_3_15\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_0\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_1\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_2\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_3\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_4\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_5\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_6\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_7\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_8\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_9\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_10\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_11\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_12\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_13\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_14\ : in STD_LOGIC;
    \rdData_reg[0]_i_23_15\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_0\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_1\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_2\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_3\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_4\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_5\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_6\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_7\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_8\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_9\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_10\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_11\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_12\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_13\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_14\ : in STD_LOGIC;
    \rdData_reg[0]_i_22_15\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_0\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_1\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_2\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_3\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_4\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_5\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_6\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_7\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_8\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_9\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_10\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_11\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_12\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_13\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_14\ : in STD_LOGIC;
    \rdData_reg[0]_i_27_15\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_0\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_1\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_2\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_3\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_4\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_5\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_6\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_7\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_8\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_9\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_10\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_11\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_12\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_13\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_14\ : in STD_LOGIC;
    \rdData_reg[0]_i_26_15\ : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    rdData : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_Axi4LiteSupporter : entity is "Axi4LiteSupporter";
end design_1_top_0_0_Axi4LiteSupporter;

architecture STRUCTURE of design_1_top_0_0_Axi4LiteSupporter is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]_1\ : STD_LOGIC;
  signal S_AXI_ARADDR_5_sn_1 : STD_LOGIC;
  signal rdAddr : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rdDataQ : STD_LOGIC;
  signal \rdDataQ[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_15_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_18_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_19_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_20_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_21_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_22_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_23_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_26_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_27_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_28_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_29_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_30_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_31_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_32_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_33_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_34_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_35_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_36_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_37_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_38_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_39_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_40_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_41_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_42_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_43_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_44_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_45_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \rdData_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal state_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of FSM_sequential_state_i_1 : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDLE:00,iSTATE:10,RD1:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDLE:00,iSTATE:10,RD1:01";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of S_AXI_RVALID_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counterQ[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counterQ[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counterQ[6]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdData_reg[0]_i_12\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdData_reg[0]_i_13\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdData_reg[0]_i_16\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdData_reg[0]_i_17\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdData_reg[0]_i_24\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdData_reg[0]_i_25\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdData_reg[0]_i_29\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdData_reg[0]_i_8\ : label is "soft_lutpair2";
begin
  \FSM_sequential_state_reg[1]_1\ <= \^fsm_sequential_state_reg[1]_1\;
  S_AXI_ARADDR_5_sp_1 <= S_AXI_ARADDR_5_sn_1;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13020000"
    )
        port map (
      I0 => state_0(0),
      I1 => \^fsm_sequential_state_reg[1]_1\,
      I2 => S_AXI_RREADY,
      I3 => S_AXI_ARVALID,
      I4 => S_AXI_ARESETN,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => state_0(0),
      I1 => S_AXI_AWVALID,
      I2 => \^fsm_sequential_state_reg[1]_1\,
      I3 => S_AXI_ARVALID,
      I4 => S_AXI_ARESETN,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
FSM_sequential_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F022"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_1\,
      I1 => \rdData_reg[0]_i_9_n_0\,
      I2 => FSM_sequential_state_reg,
      I3 => state,
      O => \FSM_sequential_state_reg[1]_3\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state_0(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \^fsm_sequential_state_reg[1]_1\,
      R => '0'
    );
\S_AXI_RDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_1\,
      I1 => state_0(0),
      I2 => rdDataQ,
      O => S_AXI_RDATA(0)
    );
S_AXI_RVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_0(0),
      I1 => \^fsm_sequential_state_reg[1]_1\,
      O => S_AXI_ARREADY
    );
\counterQ[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B0BF000"
    )
        port map (
      I0 => \rdData_reg[0]_i_9_n_0\,
      I1 => \^fsm_sequential_state_reg[1]_1\,
      I2 => state,
      I3 => FSM_sequential_state_reg,
      I4 => counterQ(0),
      O => \FSM_sequential_state_reg[1]_2\
    );
\counterQ[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \rdData_reg[0]_i_9_n_0\,
      I1 => \^fsm_sequential_state_reg[1]_1\,
      I2 => state,
      O => \FSM_sequential_state_reg[1]_0\
    );
\counterQ[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \rdData_reg[0]_i_9_n_0\,
      I1 => \^fsm_sequential_state_reg[1]_1\,
      I2 => state,
      O => counterD
    );
\rdDataQ[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => rdData,
      I1 => S_AXI_ARESETN,
      I2 => S_AXI_ARVALID,
      I3 => \^fsm_sequential_state_reg[1]_1\,
      I4 => state_0(0),
      I5 => rdDataQ,
      O => \rdDataQ[0]_i_1_n_0\
    );
\rdDataQ_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \rdDataQ[0]_i_1_n_0\,
      Q => rdDataQ,
      R => '0'
    );
\rdData_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \rdData_reg[0]_i_3_n_0\,
      I1 => \rdData_reg[0]_i_4_n_0\,
      I2 => \rdData_reg[0]_i_5_n_0\,
      I3 => \rdData_reg[0]_i_6_n_0\,
      I4 => \rdData_reg[0]_i_7_n_0\,
      I5 => \rdData_reg[0]_i_8_n_0\,
      O => S_AXI_ARADDR_5_sn_1
    );
\rdData_reg[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_3_4\,
      I1 => \rdData_reg[0]_i_3_5\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_3_6\,
      I5 => \rdData_reg[0]_i_3_7\,
      O => \rdData_reg[0]_i_10_n_0\
    );
\rdData_reg[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_3_0\,
      I1 => \rdData_reg[0]_i_3_1\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_3_2\,
      I5 => \rdData_reg[0]_i_3_3\,
      O => \rdData_reg[0]_i_11_n_0\
    );
\rdData_reg[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => S_AXI_ARADDR(3),
      I1 => S_AXI_ARVALID,
      I2 => \^fsm_sequential_state_reg[1]_1\,
      I3 => state_0(0),
      O => rdAddr(3)
    );
\rdData_reg[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => S_AXI_ARADDR(2),
      I1 => S_AXI_ARVALID,
      I2 => \^fsm_sequential_state_reg[1]_1\,
      I3 => state_0(0),
      O => rdAddr(2)
    );
\rdData_reg[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_3_12\,
      I1 => \rdData_reg[0]_i_3_13\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_3_14\,
      I5 => \rdData_reg[0]_i_3_15\,
      O => \rdData_reg[0]_i_14_n_0\
    );
\rdData_reg[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_3_8\,
      I1 => \rdData_reg[0]_i_3_9\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_3_10\,
      I5 => \rdData_reg[0]_i_3_11\,
      O => \rdData_reg[0]_i_15_n_0\
    );
\rdData_reg[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => S_AXI_ARADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => \^fsm_sequential_state_reg[1]_1\,
      I3 => state_0(0),
      O => rdAddr(0)
    );
\rdData_reg[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => S_AXI_ARADDR(1),
      I1 => S_AXI_ARVALID,
      I2 => \^fsm_sequential_state_reg[1]_1\,
      I3 => state_0(0),
      O => rdAddr(1)
    );
\rdData_reg[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_5_4\,
      I1 => \rdData_reg[0]_i_5_5\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_5_6\,
      I5 => \rdData_reg[0]_i_5_7\,
      O => \rdData_reg[0]_i_18_n_0\
    );
\rdData_reg[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_5_0\,
      I1 => \rdData_reg[0]_i_5_1\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_5_2\,
      I5 => \rdData_reg[0]_i_5_3\,
      O => \rdData_reg[0]_i_19_n_0\
    );
\rdData_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rdData_reg[0]_i_9_n_0\,
      I1 => state,
      O => \rdData__0\
    );
\rdData_reg[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_5_12\,
      I1 => \rdData_reg[0]_i_5_13\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_5_14\,
      I5 => \rdData_reg[0]_i_5_15\,
      O => \rdData_reg[0]_i_20_n_0\
    );
\rdData_reg[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_5_8\,
      I1 => \rdData_reg[0]_i_5_9\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_5_10\,
      I5 => \rdData_reg[0]_i_5_11\,
      O => \rdData_reg[0]_i_21_n_0\
    );
\rdData_reg[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rdData_reg[0]_i_30_n_0\,
      I1 => \rdData_reg[0]_i_31_n_0\,
      I2 => rdAddr(3),
      I3 => rdAddr(2),
      I4 => \rdData_reg[0]_i_32_n_0\,
      I5 => \rdData_reg[0]_i_33_n_0\,
      O => \rdData_reg[0]_i_22_n_0\
    );
\rdData_reg[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rdData_reg[0]_i_34_n_0\,
      I1 => \rdData_reg[0]_i_35_n_0\,
      I2 => rdAddr(3),
      I3 => rdAddr(2),
      I4 => \rdData_reg[0]_i_36_n_0\,
      I5 => \rdData_reg[0]_i_37_n_0\,
      O => \rdData_reg[0]_i_23_n_0\
    );
\rdData_reg[0]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => S_AXI_ARADDR(5),
      I1 => S_AXI_ARVALID,
      I2 => \^fsm_sequential_state_reg[1]_1\,
      I3 => state_0(0),
      O => rdAddr(5)
    );
\rdData_reg[0]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => S_AXI_ARADDR(4),
      I1 => S_AXI_ARVALID,
      I2 => \^fsm_sequential_state_reg[1]_1\,
      I3 => state_0(0),
      O => rdAddr(4)
    );
\rdData_reg[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rdData_reg[0]_i_38_n_0\,
      I1 => \rdData_reg[0]_i_39_n_0\,
      I2 => rdAddr(3),
      I3 => rdAddr(2),
      I4 => \rdData_reg[0]_i_40_n_0\,
      I5 => \rdData_reg[0]_i_41_n_0\,
      O => \rdData_reg[0]_i_26_n_0\
    );
\rdData_reg[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rdData_reg[0]_i_42_n_0\,
      I1 => \rdData_reg[0]_i_43_n_0\,
      I2 => rdAddr(3),
      I3 => rdAddr(2),
      I4 => \rdData_reg[0]_i_44_n_0\,
      I5 => \rdData_reg[0]_i_45_n_0\,
      O => \rdData_reg[0]_i_27_n_0\
    );
\rdData_reg[0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF77FF77FF77FF7F"
    )
        port map (
      I0 => S_AXI_ARADDR(6),
      I1 => S_AXI_ARADDR(5),
      I2 => S_AXI_ARADDR(4),
      I3 => \rdData_reg[0]_i_29_n_0\,
      I4 => S_AXI_ARADDR(2),
      I5 => S_AXI_ARADDR(3),
      O => \rdData_reg[0]_i_28_n_0\
    );
\rdData_reg[0]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => state_0(0),
      I1 => \^fsm_sequential_state_reg[1]_1\,
      I2 => S_AXI_ARVALID,
      O => \rdData_reg[0]_i_29_n_0\
    );
\rdData_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rdData_reg[0]_i_10_n_0\,
      I1 => \rdData_reg[0]_i_11_n_0\,
      I2 => rdAddr(3),
      I3 => rdAddr(2),
      I4 => \rdData_reg[0]_i_14_n_0\,
      I5 => \rdData_reg[0]_i_15_n_0\,
      O => \rdData_reg[0]_i_3_n_0\
    );
\rdData_reg[0]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_22_4\,
      I1 => \rdData_reg[0]_i_22_5\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_22_6\,
      I5 => \rdData_reg[0]_i_22_7\,
      O => \rdData_reg[0]_i_30_n_0\
    );
\rdData_reg[0]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_22_0\,
      I1 => \rdData_reg[0]_i_22_1\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_22_2\,
      I5 => \rdData_reg[0]_i_22_3\,
      O => \rdData_reg[0]_i_31_n_0\
    );
\rdData_reg[0]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_22_12\,
      I1 => \rdData_reg[0]_i_22_13\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_22_14\,
      I5 => \rdData_reg[0]_i_22_15\,
      O => \rdData_reg[0]_i_32_n_0\
    );
\rdData_reg[0]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_22_8\,
      I1 => \rdData_reg[0]_i_22_9\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_22_10\,
      I5 => \rdData_reg[0]_i_22_11\,
      O => \rdData_reg[0]_i_33_n_0\
    );
\rdData_reg[0]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_23_4\,
      I1 => \rdData_reg[0]_i_23_5\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_23_6\,
      I5 => \rdData_reg[0]_i_23_7\,
      O => \rdData_reg[0]_i_34_n_0\
    );
\rdData_reg[0]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_23_0\,
      I1 => \rdData_reg[0]_i_23_1\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_23_2\,
      I5 => \rdData_reg[0]_i_23_3\,
      O => \rdData_reg[0]_i_35_n_0\
    );
\rdData_reg[0]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_23_12\,
      I1 => \rdData_reg[0]_i_23_13\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_23_14\,
      I5 => \rdData_reg[0]_i_23_15\,
      O => \rdData_reg[0]_i_36_n_0\
    );
\rdData_reg[0]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_23_8\,
      I1 => \rdData_reg[0]_i_23_9\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_23_10\,
      I5 => \rdData_reg[0]_i_23_11\,
      O => \rdData_reg[0]_i_37_n_0\
    );
\rdData_reg[0]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_26_4\,
      I1 => \rdData_reg[0]_i_26_5\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_26_6\,
      I5 => \rdData_reg[0]_i_26_7\,
      O => \rdData_reg[0]_i_38_n_0\
    );
\rdData_reg[0]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_26_0\,
      I1 => \rdData_reg[0]_i_26_1\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_26_2\,
      I5 => \rdData_reg[0]_i_26_3\,
      O => \rdData_reg[0]_i_39_n_0\
    );
\rdData_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_1_0\,
      I1 => \rdData_reg[0]_i_1_1\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_1_2\,
      I5 => \rdData_reg[0]_i_1_3\,
      O => \rdData_reg[0]_i_4_n_0\
    );
\rdData_reg[0]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_26_12\,
      I1 => \rdData_reg[0]_i_26_13\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_26_14\,
      I5 => \rdData_reg[0]_i_26_15\,
      O => \rdData_reg[0]_i_40_n_0\
    );
\rdData_reg[0]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_26_8\,
      I1 => \rdData_reg[0]_i_26_9\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_26_10\,
      I5 => \rdData_reg[0]_i_26_11\,
      O => \rdData_reg[0]_i_41_n_0\
    );
\rdData_reg[0]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_27_4\,
      I1 => \rdData_reg[0]_i_27_5\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_27_6\,
      I5 => \rdData_reg[0]_i_27_7\,
      O => \rdData_reg[0]_i_42_n_0\
    );
\rdData_reg[0]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_27_0\,
      I1 => \rdData_reg[0]_i_27_1\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_27_2\,
      I5 => \rdData_reg[0]_i_27_3\,
      O => \rdData_reg[0]_i_43_n_0\
    );
\rdData_reg[0]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_27_12\,
      I1 => \rdData_reg[0]_i_27_13\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_27_14\,
      I5 => \rdData_reg[0]_i_27_15\,
      O => \rdData_reg[0]_i_44_n_0\
    );
\rdData_reg[0]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \rdData_reg[0]_i_27_8\,
      I1 => \rdData_reg[0]_i_27_9\,
      I2 => rdAddr(0),
      I3 => rdAddr(1),
      I4 => \rdData_reg[0]_i_27_10\,
      I5 => \rdData_reg[0]_i_27_11\,
      O => \rdData_reg[0]_i_45_n_0\
    );
\rdData_reg[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rdData_reg[0]_i_18_n_0\,
      I1 => \rdData_reg[0]_i_19_n_0\,
      I2 => rdAddr(3),
      I3 => rdAddr(2),
      I4 => \rdData_reg[0]_i_20_n_0\,
      I5 => \rdData_reg[0]_i_21_n_0\,
      O => \rdData_reg[0]_i_5_n_0\
    );
\rdData_reg[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rdData_reg[0]_i_22_n_0\,
      I1 => \rdData_reg[0]_i_23_n_0\,
      I2 => rdAddr(5),
      I3 => rdAddr(4),
      I4 => \rdData_reg[0]_i_26_n_0\,
      I5 => \rdData_reg[0]_i_27_n_0\,
      O => \rdData_reg[0]_i_6_n_0\
    );
\rdData_reg[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFFFFFFF"
    )
        port map (
      I0 => S_AXI_ARADDR(5),
      I1 => S_AXI_ARADDR(4),
      I2 => state_0(0),
      I3 => \^fsm_sequential_state_reg[1]_1\,
      I4 => S_AXI_ARVALID,
      I5 => S_AXI_ARADDR(6),
      O => \rdData_reg[0]_i_7_n_0\
    );
\rdData_reg[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => S_AXI_ARADDR(5),
      I1 => state_0(0),
      I2 => \^fsm_sequential_state_reg[1]_1\,
      I3 => S_AXI_ARVALID,
      I4 => S_AXI_ARADDR(6),
      O => \rdData_reg[0]_i_8_n_0\
    );
\rdData_reg[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \rdData_reg[0]_i_28_n_0\,
      I1 => S_AXI_ARADDR(7),
      I2 => S_AXI_ARADDR(8),
      I3 => S_AXI_ARADDR(9),
      I4 => \rdData_reg[0]_i_29_n_0\,
      O => \rdData_reg[0]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_tdc is
  port (
    tdcOut : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_tdc : entity is "tdc";
end design_1_top_0_0_tdc;

architecture STRUCTURE of design_1_top_0_0_tdc is
  signal \delay[0]_i_1_n_0\ : STD_LOGIC;
  signal delay_bufs : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of delay_bufs : signal is std.standard.true;
  signal initial_bufs : STD_LOGIC;
  attribute DONT_TOUCH of initial_bufs : signal is std.standard.true;
  signal latches : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \latches_reg[0]\ : label is "LD";
begin
  initial_bufs <= S_AXI_ACLK;
\delay[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => latches,
      I1 => S_AXI_ARESETN,
      O => \delay[0]_i_1_n_0\
    );
\delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => initial_bufs,
      CE => '1',
      D => \delay[0]_i_1_n_0\,
      Q => tdcOut,
      R => '0'
    );
initial_bufs_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => initial_bufs,
      O => delay_bufs
    );
\latches_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => delay_bufs,
      G => initial_bufs,
      GE => '1',
      Q => latches
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_top : entity is "top";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
  signal AxiSupporter1_n_0 : STD_LOGIC;
  signal AxiSupporter1_n_2 : STD_LOGIC;
  signal AxiSupporter1_n_5 : STD_LOGIC;
  signal AxiSupporter1_n_8 : STD_LOGIC;
  signal counterD : STD_LOGIC;
  signal counterQ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \counterQ[1]_i_1_n_0\ : STD_LOGIC;
  signal \counterQ[2]_i_1_n_0\ : STD_LOGIC;
  signal \counterQ[3]_i_1_n_0\ : STD_LOGIC;
  signal \counterQ[4]_i_1_n_0\ : STD_LOGIC;
  signal \counterQ[4]_i_2_n_0\ : STD_LOGIC;
  signal \counterQ[5]_i_1_n_0\ : STD_LOGIC;
  signal \counterQ[6]_i_3_n_0\ : STD_LOGIC;
  signal \counterQ[6]_i_4_n_0\ : STD_LOGIC;
  signal mem : STD_LOGIC;
  signal \mem_reg[10][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[11][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[12][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[13][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[14][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[15][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[16][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[17][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[18][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[19][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[20][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[21][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[22][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[23][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[24][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[25][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[26][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[27][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[28][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[29][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[30][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[31][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[32][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[33][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[34][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[35][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[36][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[37][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[38][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[39][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[39][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[40][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[41][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[42][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[43][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[44][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[45][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[46][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[47][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[47][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[48][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[49][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[50][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[51][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[52][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[53][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[54][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[55][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[55][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[56][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[57][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[58][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[59][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[60][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[61][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[62][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[63][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[63][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[64][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[64][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[65][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[66][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[67][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[68][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[68][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[69][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[6][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[70][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[71][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[72][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[73][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[74][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[75][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[76][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[77][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[78][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[79][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[7][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[80][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[80][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[81][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[82][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[83][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[84][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[85][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[86][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[87][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[88][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[89][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[8][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[8][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[90][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[91][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[92][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[92][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[93][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[93][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[94][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[94][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[95][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[95][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[96][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[96][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[97][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[97][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[98][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[98][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[99][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[99][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[99][0]_i_3_n_0\ : STD_LOGIC;
  signal \mem_reg[9][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[10][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[11][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[12][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[13][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[14][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[15][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[16][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[17][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[18][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[19][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[20][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[21][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[22][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[23][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[24][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[25][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[26][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[27][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[28][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[29][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[30][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[31][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[32][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[33][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[34][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[35][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[36][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[37][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[38][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[39][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[40][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[41][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[42][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[43][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[44][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[45][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[46][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[47][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[48][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[49][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[50][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[51][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[52][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[53][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[54][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[55][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[56][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[57][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[58][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[59][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[60][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[61][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[62][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[63][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[64][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[65][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[66][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[67][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[68][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[69][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[70][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[71][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[72][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[73][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[74][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[75][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[76][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[77][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[78][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[79][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[80][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[81][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[82][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[83][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[84][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[85][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[86][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[87][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[88][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[89][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[90][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[91][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[92][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[93][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[94][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[95][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[96][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[97][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[98][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[99][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[9][0]\ : STD_LOGIC;
  signal rdData : STD_LOGIC;
  signal \rdData__0\ : STD_LOGIC;
  signal state : STD_LOGIC;
  signal tdcOut : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_state_reg : label is "IDLE:0,READ:1,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counterQ[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \counterQ[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counterQ[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counterQ[6]_i_4\ : label is "soft_lutpair62";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \mem_reg[0][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[0][0]_i_1\ : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of \mem_reg[10][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[10][0]_i_1\ : label is "soft_lutpair39";
  attribute XILINX_LEGACY_PRIM of \mem_reg[11][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[11][0]_i_1\ : label is "soft_lutpair40";
  attribute XILINX_LEGACY_PRIM of \mem_reg[12][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[12][0]_i_1\ : label is "soft_lutpair41";
  attribute XILINX_LEGACY_PRIM of \mem_reg[13][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[13][0]_i_1\ : label is "soft_lutpair42";
  attribute XILINX_LEGACY_PRIM of \mem_reg[14][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[14][0]_i_1\ : label is "soft_lutpair43";
  attribute XILINX_LEGACY_PRIM of \mem_reg[15][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mem_reg[16][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mem_reg[17][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[17][0]_i_1\ : label is "soft_lutpair38";
  attribute XILINX_LEGACY_PRIM of \mem_reg[18][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[18][0]_i_1\ : label is "soft_lutpair45";
  attribute XILINX_LEGACY_PRIM of \mem_reg[19][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mem_reg[1][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[1][0]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \mem_reg[20][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[20][0]_i_1\ : label is "soft_lutpair46";
  attribute XILINX_LEGACY_PRIM of \mem_reg[21][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mem_reg[22][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mem_reg[23][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[23][0]_i_1\ : label is "soft_lutpair44";
  attribute XILINX_LEGACY_PRIM of \mem_reg[24][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mem_reg[25][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[25][0]_i_1\ : label is "soft_lutpair32";
  attribute XILINX_LEGACY_PRIM of \mem_reg[26][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[26][0]_i_1\ : label is "soft_lutpair45";
  attribute XILINX_LEGACY_PRIM of \mem_reg[27][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[27][0]_i_1\ : label is "soft_lutpair40";
  attribute XILINX_LEGACY_PRIM of \mem_reg[28][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[28][0]_i_1\ : label is "soft_lutpair46";
  attribute XILINX_LEGACY_PRIM of \mem_reg[29][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[29][0]_i_1\ : label is "soft_lutpair42";
  attribute XILINX_LEGACY_PRIM of \mem_reg[2][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[2][0]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \mem_reg[30][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[30][0]_i_1\ : label is "soft_lutpair43";
  attribute XILINX_LEGACY_PRIM of \mem_reg[31][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[31][0]_i_1\ : label is "soft_lutpair44";
  attribute XILINX_LEGACY_PRIM of \mem_reg[32][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mem_reg[33][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[33][0]_i_1\ : label is "soft_lutpair32";
  attribute XILINX_LEGACY_PRIM of \mem_reg[34][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[34][0]_i_1\ : label is "soft_lutpair39";
  attribute XILINX_LEGACY_PRIM of \mem_reg[35][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[35][0]_i_1\ : label is "soft_lutpair34";
  attribute XILINX_LEGACY_PRIM of \mem_reg[36][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[36][0]_i_1\ : label is "soft_lutpair41";
  attribute XILINX_LEGACY_PRIM of \mem_reg[37][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[37][0]_i_1\ : label is "soft_lutpair35";
  attribute XILINX_LEGACY_PRIM of \mem_reg[38][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[38][0]_i_1\ : label is "soft_lutpair36";
  attribute XILINX_LEGACY_PRIM of \mem_reg[39][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[39][0]_i_1\ : label is "soft_lutpair37";
  attribute XILINX_LEGACY_PRIM of \mem_reg[3][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[3][0]_i_1\ : label is "soft_lutpair34";
  attribute XILINX_LEGACY_PRIM of \mem_reg[40][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[40][0]_i_1\ : label is "soft_lutpair48";
  attribute XILINX_LEGACY_PRIM of \mem_reg[41][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[41][0]_i_1\ : label is "soft_lutpair49";
  attribute XILINX_LEGACY_PRIM of \mem_reg[42][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[42][0]_i_1\ : label is "soft_lutpair50";
  attribute XILINX_LEGACY_PRIM of \mem_reg[43][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[43][0]_i_1\ : label is "soft_lutpair51";
  attribute XILINX_LEGACY_PRIM of \mem_reg[44][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[44][0]_i_1\ : label is "soft_lutpair51";
  attribute XILINX_LEGACY_PRIM of \mem_reg[45][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[45][0]_i_1\ : label is "soft_lutpair50";
  attribute XILINX_LEGACY_PRIM of \mem_reg[46][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[46][0]_i_1\ : label is "soft_lutpair49";
  attribute XILINX_LEGACY_PRIM of \mem_reg[47][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[47][0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \mem_reg[47][0]_i_2\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \mem_reg[48][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[48][0]_i_1\ : label is "soft_lutpair52";
  attribute XILINX_LEGACY_PRIM of \mem_reg[49][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[49][0]_i_1\ : label is "soft_lutpair56";
  attribute XILINX_LEGACY_PRIM of \mem_reg[4][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[4][0]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \mem_reg[50][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[50][0]_i_1\ : label is "soft_lutpair54";
  attribute XILINX_LEGACY_PRIM of \mem_reg[51][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[51][0]_i_1\ : label is "soft_lutpair55";
  attribute XILINX_LEGACY_PRIM of \mem_reg[52][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[52][0]_i_1\ : label is "soft_lutpair56";
  attribute XILINX_LEGACY_PRIM of \mem_reg[53][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[53][0]_i_1\ : label is "soft_lutpair55";
  attribute XILINX_LEGACY_PRIM of \mem_reg[54][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[54][0]_i_1\ : label is "soft_lutpair54";
  attribute XILINX_LEGACY_PRIM of \mem_reg[55][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[55][0]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \mem_reg[55][0]_i_2\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \mem_reg[56][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[56][0]_i_1\ : label is "soft_lutpair53";
  attribute XILINX_LEGACY_PRIM of \mem_reg[57][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[57][0]_i_1\ : label is "soft_lutpair57";
  attribute XILINX_LEGACY_PRIM of \mem_reg[58][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[58][0]_i_1\ : label is "soft_lutpair58";
  attribute XILINX_LEGACY_PRIM of \mem_reg[59][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[59][0]_i_1\ : label is "soft_lutpair58";
  attribute XILINX_LEGACY_PRIM of \mem_reg[5][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[5][0]_i_1\ : label is "soft_lutpair35";
  attribute XILINX_LEGACY_PRIM of \mem_reg[60][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[60][0]_i_1\ : label is "soft_lutpair57";
  attribute XILINX_LEGACY_PRIM of \mem_reg[61][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[61][0]_i_1\ : label is "soft_lutpair47";
  attribute XILINX_LEGACY_PRIM of \mem_reg[62][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[62][0]_i_1\ : label is "soft_lutpair53";
  attribute XILINX_LEGACY_PRIM of \mem_reg[63][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[63][0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mem_reg[63][0]_i_2\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \mem_reg[64][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[64][0]_i_2\ : label is "soft_lutpair62";
  attribute XILINX_LEGACY_PRIM of \mem_reg[65][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[65][0]_i_1\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \mem_reg[66][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[66][0]_i_1\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \mem_reg[67][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mem_reg[68][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[68][0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mem_reg[68][0]_i_2\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of \mem_reg[69][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[69][0]_i_1\ : label is "soft_lutpair23";
  attribute XILINX_LEGACY_PRIM of \mem_reg[6][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[6][0]_i_1\ : label is "soft_lutpair36";
  attribute XILINX_LEGACY_PRIM of \mem_reg[70][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[70][0]_i_1\ : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of \mem_reg[71][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[71][0]_i_1\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \mem_reg[72][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[72][0]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \mem_reg[73][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[73][0]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \mem_reg[74][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[74][0]_i_1\ : label is "soft_lutpair18";
  attribute XILINX_LEGACY_PRIM of \mem_reg[75][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[75][0]_i_1\ : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \mem_reg[76][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[76][0]_i_1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of \mem_reg[77][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[77][0]_i_1\ : label is "soft_lutpair23";
  attribute XILINX_LEGACY_PRIM of \mem_reg[78][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[78][0]_i_1\ : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of \mem_reg[79][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[79][0]_i_1\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \mem_reg[7][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[7][0]_i_1\ : label is "soft_lutpair37";
  attribute XILINX_LEGACY_PRIM of \mem_reg[80][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[80][0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \mem_reg[80][0]_i_2\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \mem_reg[81][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[81][0]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \mem_reg[82][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[82][0]_i_1\ : label is "soft_lutpair18";
  attribute XILINX_LEGACY_PRIM of \mem_reg[83][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[83][0]_i_1\ : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \mem_reg[84][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[84][0]_i_1\ : label is "soft_lutpair16";
  attribute XILINX_LEGACY_PRIM of \mem_reg[85][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[85][0]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \mem_reg[86][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[86][0]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \mem_reg[87][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[87][0]_i_1\ : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM of \mem_reg[88][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[88][0]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \mem_reg[89][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[89][0]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \mem_reg[8][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[8][0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mem_reg[8][0]_i_2\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \mem_reg[90][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[90][0]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \mem_reg[91][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[91][0]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \mem_reg[92][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[92][0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mem_reg[92][0]_i_2\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \mem_reg[93][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[93][0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mem_reg[93][0]_i_2\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \mem_reg[94][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[94][0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mem_reg[94][0]_i_2\ : label is "soft_lutpair61";
  attribute XILINX_LEGACY_PRIM of \mem_reg[95][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[95][0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mem_reg[95][0]_i_2\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of \mem_reg[96][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[96][0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mem_reg[96][0]_i_2\ : label is "soft_lutpair59";
  attribute XILINX_LEGACY_PRIM of \mem_reg[97][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[97][0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mem_reg[97][0]_i_2\ : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of \mem_reg[98][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[98][0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \mem_reg[98][0]_i_2\ : label is "soft_lutpair59";
  attribute XILINX_LEGACY_PRIM of \mem_reg[99][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[99][0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mem_reg[99][0]_i_3\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of \mem_reg[9][0]\ : label is "LD";
  attribute SOFT_HLUTNM of \mem_reg[9][0]_i_1\ : label is "soft_lutpair38";
  attribute XILINX_LEGACY_PRIM of \rdData_reg[0]\ : label is "LD";
begin
AxiSupporter1: entity work.design_1_top_0_0_Axi4LiteSupporter
     port map (
      FSM_sequential_state_reg => \counterQ[4]_i_2_n_0\,
      \FSM_sequential_state_reg[1]_0\ => AxiSupporter1_n_0,
      \FSM_sequential_state_reg[1]_1\ => \FSM_sequential_state_reg[1]\,
      \FSM_sequential_state_reg[1]_2\ => AxiSupporter1_n_2,
      \FSM_sequential_state_reg[1]_3\ => AxiSupporter1_n_8,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(9 downto 0) => S_AXI_ARADDR(9 downto 0),
      S_AXI_ARADDR_5_sp_1 => AxiSupporter1_n_5,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_RDATA(0) => S_AXI_RDATA(0),
      S_AXI_RREADY => S_AXI_RREADY,
      counterD => counterD,
      counterQ(0) => counterQ(0),
      rdData => rdData,
      \rdData__0\ => \rdData__0\,
      \rdData_reg[0]_i_1_0\ => \mem_reg_n_0_[97][0]\,
      \rdData_reg[0]_i_1_1\ => \mem_reg_n_0_[99][0]\,
      \rdData_reg[0]_i_1_2\ => \mem_reg_n_0_[96][0]\,
      \rdData_reg[0]_i_1_3\ => \mem_reg_n_0_[98][0]\,
      \rdData_reg[0]_i_22_0\ => \mem_reg_n_0_[29][0]\,
      \rdData_reg[0]_i_22_1\ => \mem_reg_n_0_[31][0]\,
      \rdData_reg[0]_i_22_10\ => \mem_reg_n_0_[24][0]\,
      \rdData_reg[0]_i_22_11\ => \mem_reg_n_0_[26][0]\,
      \rdData_reg[0]_i_22_12\ => \mem_reg_n_0_[17][0]\,
      \rdData_reg[0]_i_22_13\ => \mem_reg_n_0_[19][0]\,
      \rdData_reg[0]_i_22_14\ => \mem_reg_n_0_[16][0]\,
      \rdData_reg[0]_i_22_15\ => \mem_reg_n_0_[18][0]\,
      \rdData_reg[0]_i_22_2\ => \mem_reg_n_0_[28][0]\,
      \rdData_reg[0]_i_22_3\ => \mem_reg_n_0_[30][0]\,
      \rdData_reg[0]_i_22_4\ => \mem_reg_n_0_[21][0]\,
      \rdData_reg[0]_i_22_5\ => \mem_reg_n_0_[23][0]\,
      \rdData_reg[0]_i_22_6\ => \mem_reg_n_0_[20][0]\,
      \rdData_reg[0]_i_22_7\ => \mem_reg_n_0_[22][0]\,
      \rdData_reg[0]_i_22_8\ => \mem_reg_n_0_[25][0]\,
      \rdData_reg[0]_i_22_9\ => \mem_reg_n_0_[27][0]\,
      \rdData_reg[0]_i_23_0\ => \mem_reg_n_0_[61][0]\,
      \rdData_reg[0]_i_23_1\ => \mem_reg_n_0_[63][0]\,
      \rdData_reg[0]_i_23_10\ => \mem_reg_n_0_[56][0]\,
      \rdData_reg[0]_i_23_11\ => \mem_reg_n_0_[58][0]\,
      \rdData_reg[0]_i_23_12\ => \mem_reg_n_0_[49][0]\,
      \rdData_reg[0]_i_23_13\ => \mem_reg_n_0_[51][0]\,
      \rdData_reg[0]_i_23_14\ => \mem_reg_n_0_[48][0]\,
      \rdData_reg[0]_i_23_15\ => \mem_reg_n_0_[50][0]\,
      \rdData_reg[0]_i_23_2\ => \mem_reg_n_0_[60][0]\,
      \rdData_reg[0]_i_23_3\ => \mem_reg_n_0_[62][0]\,
      \rdData_reg[0]_i_23_4\ => \mem_reg_n_0_[53][0]\,
      \rdData_reg[0]_i_23_5\ => \mem_reg_n_0_[55][0]\,
      \rdData_reg[0]_i_23_6\ => \mem_reg_n_0_[52][0]\,
      \rdData_reg[0]_i_23_7\ => \mem_reg_n_0_[54][0]\,
      \rdData_reg[0]_i_23_8\ => \mem_reg_n_0_[57][0]\,
      \rdData_reg[0]_i_23_9\ => \mem_reg_n_0_[59][0]\,
      \rdData_reg[0]_i_26_0\ => \mem_reg_n_0_[13][0]\,
      \rdData_reg[0]_i_26_1\ => \mem_reg_n_0_[15][0]\,
      \rdData_reg[0]_i_26_10\ => \mem_reg_n_0_[8][0]\,
      \rdData_reg[0]_i_26_11\ => \mem_reg_n_0_[10][0]\,
      \rdData_reg[0]_i_26_12\ => \mem_reg_n_0_[1][0]\,
      \rdData_reg[0]_i_26_13\ => \mem_reg_n_0_[3][0]\,
      \rdData_reg[0]_i_26_14\ => \mem_reg_n_0_[0][0]\,
      \rdData_reg[0]_i_26_15\ => \mem_reg_n_0_[2][0]\,
      \rdData_reg[0]_i_26_2\ => \mem_reg_n_0_[12][0]\,
      \rdData_reg[0]_i_26_3\ => \mem_reg_n_0_[14][0]\,
      \rdData_reg[0]_i_26_4\ => \mem_reg_n_0_[5][0]\,
      \rdData_reg[0]_i_26_5\ => \mem_reg_n_0_[7][0]\,
      \rdData_reg[0]_i_26_6\ => \mem_reg_n_0_[4][0]\,
      \rdData_reg[0]_i_26_7\ => \mem_reg_n_0_[6][0]\,
      \rdData_reg[0]_i_26_8\ => \mem_reg_n_0_[9][0]\,
      \rdData_reg[0]_i_26_9\ => \mem_reg_n_0_[11][0]\,
      \rdData_reg[0]_i_27_0\ => \mem_reg_n_0_[45][0]\,
      \rdData_reg[0]_i_27_1\ => \mem_reg_n_0_[47][0]\,
      \rdData_reg[0]_i_27_10\ => \mem_reg_n_0_[40][0]\,
      \rdData_reg[0]_i_27_11\ => \mem_reg_n_0_[42][0]\,
      \rdData_reg[0]_i_27_12\ => \mem_reg_n_0_[33][0]\,
      \rdData_reg[0]_i_27_13\ => \mem_reg_n_0_[35][0]\,
      \rdData_reg[0]_i_27_14\ => \mem_reg_n_0_[32][0]\,
      \rdData_reg[0]_i_27_15\ => \mem_reg_n_0_[34][0]\,
      \rdData_reg[0]_i_27_2\ => \mem_reg_n_0_[44][0]\,
      \rdData_reg[0]_i_27_3\ => \mem_reg_n_0_[46][0]\,
      \rdData_reg[0]_i_27_4\ => \mem_reg_n_0_[37][0]\,
      \rdData_reg[0]_i_27_5\ => \mem_reg_n_0_[39][0]\,
      \rdData_reg[0]_i_27_6\ => \mem_reg_n_0_[36][0]\,
      \rdData_reg[0]_i_27_7\ => \mem_reg_n_0_[38][0]\,
      \rdData_reg[0]_i_27_8\ => \mem_reg_n_0_[41][0]\,
      \rdData_reg[0]_i_27_9\ => \mem_reg_n_0_[43][0]\,
      \rdData_reg[0]_i_3_0\ => \mem_reg_n_0_[93][0]\,
      \rdData_reg[0]_i_3_1\ => \mem_reg_n_0_[95][0]\,
      \rdData_reg[0]_i_3_10\ => \mem_reg_n_0_[88][0]\,
      \rdData_reg[0]_i_3_11\ => \mem_reg_n_0_[90][0]\,
      \rdData_reg[0]_i_3_12\ => \mem_reg_n_0_[81][0]\,
      \rdData_reg[0]_i_3_13\ => \mem_reg_n_0_[83][0]\,
      \rdData_reg[0]_i_3_14\ => \mem_reg_n_0_[80][0]\,
      \rdData_reg[0]_i_3_15\ => \mem_reg_n_0_[82][0]\,
      \rdData_reg[0]_i_3_2\ => \mem_reg_n_0_[92][0]\,
      \rdData_reg[0]_i_3_3\ => \mem_reg_n_0_[94][0]\,
      \rdData_reg[0]_i_3_4\ => \mem_reg_n_0_[85][0]\,
      \rdData_reg[0]_i_3_5\ => \mem_reg_n_0_[87][0]\,
      \rdData_reg[0]_i_3_6\ => \mem_reg_n_0_[84][0]\,
      \rdData_reg[0]_i_3_7\ => \mem_reg_n_0_[86][0]\,
      \rdData_reg[0]_i_3_8\ => \mem_reg_n_0_[89][0]\,
      \rdData_reg[0]_i_3_9\ => \mem_reg_n_0_[91][0]\,
      \rdData_reg[0]_i_5_0\ => \mem_reg_n_0_[77][0]\,
      \rdData_reg[0]_i_5_1\ => \mem_reg_n_0_[79][0]\,
      \rdData_reg[0]_i_5_10\ => \mem_reg_n_0_[72][0]\,
      \rdData_reg[0]_i_5_11\ => \mem_reg_n_0_[74][0]\,
      \rdData_reg[0]_i_5_12\ => \mem_reg_n_0_[65][0]\,
      \rdData_reg[0]_i_5_13\ => \mem_reg_n_0_[67][0]\,
      \rdData_reg[0]_i_5_14\ => \mem_reg_n_0_[64][0]\,
      \rdData_reg[0]_i_5_15\ => \mem_reg_n_0_[66][0]\,
      \rdData_reg[0]_i_5_2\ => \mem_reg_n_0_[76][0]\,
      \rdData_reg[0]_i_5_3\ => \mem_reg_n_0_[78][0]\,
      \rdData_reg[0]_i_5_4\ => \mem_reg_n_0_[69][0]\,
      \rdData_reg[0]_i_5_5\ => \mem_reg_n_0_[71][0]\,
      \rdData_reg[0]_i_5_6\ => \mem_reg_n_0_[68][0]\,
      \rdData_reg[0]_i_5_7\ => \mem_reg_n_0_[70][0]\,
      \rdData_reg[0]_i_5_8\ => \mem_reg_n_0_[73][0]\,
      \rdData_reg[0]_i_5_9\ => \mem_reg_n_0_[75][0]\,
      state => state
    );
FSM_sequential_state_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => AxiSupporter1_n_8,
      Q => state,
      R => '0'
    );
\counterQ[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \counterQ[4]_i_2_n_0\,
      I1 => counterQ(0),
      I2 => counterQ(1),
      O => \counterQ[1]_i_1_n_0\
    );
\counterQ[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \counterQ[4]_i_2_n_0\,
      I1 => counterQ(2),
      I2 => counterQ(0),
      I3 => counterQ(1),
      O => \counterQ[2]_i_1_n_0\
    );
\counterQ[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \counterQ[4]_i_2_n_0\,
      I1 => counterQ(3),
      I2 => counterQ(2),
      I3 => counterQ(1),
      I4 => counterQ(0),
      O => \counterQ[3]_i_1_n_0\
    );
\counterQ[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \counterQ[4]_i_2_n_0\,
      I1 => counterQ(4),
      I2 => counterQ(3),
      I3 => counterQ(0),
      I4 => counterQ(1),
      I5 => counterQ(2),
      O => \counterQ[4]_i_1_n_0\
    );
\counterQ[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7777777F"
    )
        port map (
      I0 => counterQ(6),
      I1 => counterQ(5),
      I2 => counterQ(2),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \counterQ[4]_i_2_n_0\
    );
\counterQ[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34444444444C444C"
    )
        port map (
      I0 => counterQ(6),
      I1 => counterQ(5),
      I2 => counterQ(4),
      I3 => counterQ(2),
      I4 => \counterQ[6]_i_4_n_0\,
      I5 => counterQ(3),
      O => \counterQ[5]_i_1_n_0\
    );
\counterQ[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6222222222222A2A"
    )
        port map (
      I0 => counterQ(6),
      I1 => counterQ(5),
      I2 => counterQ(3),
      I3 => \counterQ[6]_i_4_n_0\,
      I4 => counterQ(2),
      I5 => counterQ(4),
      O => \counterQ[6]_i_3_n_0\
    );
\counterQ[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counterQ(0),
      I1 => counterQ(1),
      O => \counterQ[6]_i_4_n_0\
    );
\counterQ_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => AxiSupporter1_n_2,
      Q => counterQ(0),
      R => '0'
    );
\counterQ_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => counterD,
      D => \counterQ[1]_i_1_n_0\,
      Q => counterQ(1),
      R => AxiSupporter1_n_0
    );
\counterQ_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => counterD,
      D => \counterQ[2]_i_1_n_0\,
      Q => counterQ(2),
      R => AxiSupporter1_n_0
    );
\counterQ_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => counterD,
      D => \counterQ[3]_i_1_n_0\,
      Q => counterQ(3),
      R => AxiSupporter1_n_0
    );
\counterQ_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => counterD,
      D => \counterQ[4]_i_1_n_0\,
      Q => counterQ(4),
      R => AxiSupporter1_n_0
    );
\counterQ_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => counterD,
      D => \counterQ[5]_i_1_n_0\,
      Q => counterQ(5),
      R => AxiSupporter1_n_0
    );
\counterQ_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => counterD,
      D => \counterQ[6]_i_3_n_0\,
      Q => counterQ(6),
      R => AxiSupporter1_n_0
    );
\mem_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => mem,
      GE => '1',
      Q => \mem_reg_n_0_[0][0]\
    );
\mem_reg[0][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => counterQ(2),
      I1 => counterQ(0),
      I2 => counterQ(1),
      I3 => \mem_reg[39][0]_i_2_n_0\,
      I4 => \mem_reg[68][0]_i_2_n_0\,
      O => mem
    );
\mem_reg[10][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[10][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[10][0]\
    );
\mem_reg[10][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[98][0]_i_2_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[10][0]_i_1_n_0\
    );
\mem_reg[11][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[11][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[11][0]\
    );
\mem_reg[11][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[99][0]_i_3_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[11][0]_i_1_n_0\
    );
\mem_reg[12][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[12][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[12][0]\
    );
\mem_reg[12][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[92][0]_i_2_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[12][0]_i_1_n_0\
    );
\mem_reg[13][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[13][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[13][0]\
    );
\mem_reg[13][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[93][0]_i_2_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[13][0]_i_1_n_0\
    );
\mem_reg[14][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[14][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[14][0]\
    );
\mem_reg[14][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[94][0]_i_2_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[14][0]_i_1_n_0\
    );
\mem_reg[15][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[15][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[15][0]\
    );
\mem_reg[15][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[95][0]_i_2_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[15][0]_i_1_n_0\
    );
\mem_reg[16][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[16][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[16][0]\
    );
\mem_reg[16][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \mem_reg[64][0]_i_2_n_0\,
      I1 => counterQ(5),
      I2 => counterQ(4),
      I3 => counterQ(2),
      I4 => counterQ(3),
      I5 => \mem_reg[39][0]_i_2_n_0\,
      O => \mem_reg[16][0]_i_1_n_0\
    );
\mem_reg[17][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[17][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[17][0]\
    );
\mem_reg[17][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[97][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[17][0]_i_1_n_0\
    );
\mem_reg[18][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[18][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[18][0]\
    );
\mem_reg[18][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[98][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[18][0]_i_1_n_0\
    );
\mem_reg[19][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[19][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[19][0]\
    );
\mem_reg[19][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[99][0]_i_3_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[19][0]_i_1_n_0\
    );
\mem_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[1][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[1][0]\
    );
\mem_reg[1][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => counterQ(3),
      I1 => counterQ(2),
      I2 => counterQ(0),
      I3 => counterQ(1),
      I4 => \mem_reg[8][0]_i_2_n_0\,
      O => \mem_reg[1][0]_i_1_n_0\
    );
\mem_reg[20][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[20][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[20][0]\
    );
\mem_reg[20][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[92][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[20][0]_i_1_n_0\
    );
\mem_reg[21][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[21][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[21][0]\
    );
\mem_reg[21][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[93][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[21][0]_i_1_n_0\
    );
\mem_reg[22][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[22][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[22][0]\
    );
\mem_reg[22][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[94][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[22][0]_i_1_n_0\
    );
\mem_reg[23][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[23][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[23][0]\
    );
\mem_reg[23][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[95][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[23][0]_i_1_n_0\
    );
\mem_reg[24][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[24][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[24][0]\
    );
\mem_reg[24][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[96][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[24][0]_i_1_n_0\
    );
\mem_reg[25][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[25][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[25][0]\
    );
\mem_reg[25][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[97][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[25][0]_i_1_n_0\
    );
\mem_reg[26][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[26][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[26][0]\
    );
\mem_reg[26][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[98][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[26][0]_i_1_n_0\
    );
\mem_reg[27][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[27][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[27][0]\
    );
\mem_reg[27][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[99][0]_i_3_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[27][0]_i_1_n_0\
    );
\mem_reg[28][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[28][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[28][0]\
    );
\mem_reg[28][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[92][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[28][0]_i_1_n_0\
    );
\mem_reg[29][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[29][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[29][0]\
    );
\mem_reg[29][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[93][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[29][0]_i_1_n_0\
    );
\mem_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[2][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[2][0]\
    );
\mem_reg[2][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => counterQ(3),
      I1 => counterQ(2),
      I2 => counterQ(1),
      I3 => counterQ(0),
      I4 => \mem_reg[8][0]_i_2_n_0\,
      O => \mem_reg[2][0]_i_1_n_0\
    );
\mem_reg[30][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[30][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[30][0]\
    );
\mem_reg[30][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[94][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[30][0]_i_1_n_0\
    );
\mem_reg[31][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[31][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[31][0]\
    );
\mem_reg[31][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[95][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[31][0]_i_1_n_0\
    );
\mem_reg[32][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[32][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[32][0]\
    );
\mem_reg[32][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \mem_reg[64][0]_i_2_n_0\,
      I1 => counterQ(4),
      I2 => counterQ(5),
      I3 => counterQ(2),
      I4 => counterQ(3),
      I5 => \mem_reg[39][0]_i_2_n_0\,
      O => \mem_reg[32][0]_i_1_n_0\
    );
\mem_reg[33][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[33][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[33][0]\
    );
\mem_reg[33][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[97][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[33][0]_i_1_n_0\
    );
\mem_reg[34][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[34][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[34][0]\
    );
\mem_reg[34][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[98][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[34][0]_i_1_n_0\
    );
\mem_reg[35][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[35][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[35][0]\
    );
\mem_reg[35][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[99][0]_i_3_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[35][0]_i_1_n_0\
    );
\mem_reg[36][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[36][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[36][0]\
    );
\mem_reg[36][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => counterQ(4),
      I1 => counterQ(3),
      I2 => counterQ(5),
      I3 => \mem_reg[39][0]_i_2_n_0\,
      I4 => \mem_reg[92][0]_i_2_n_0\,
      O => \mem_reg[36][0]_i_1_n_0\
    );
\mem_reg[37][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[37][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[37][0]\
    );
\mem_reg[37][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => counterQ(4),
      I1 => counterQ(3),
      I2 => counterQ(5),
      I3 => \mem_reg[39][0]_i_2_n_0\,
      I4 => \mem_reg[93][0]_i_2_n_0\,
      O => \mem_reg[37][0]_i_1_n_0\
    );
\mem_reg[38][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[38][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[38][0]\
    );
\mem_reg[38][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => counterQ(4),
      I1 => counterQ(3),
      I2 => counterQ(5),
      I3 => \mem_reg[39][0]_i_2_n_0\,
      I4 => \mem_reg[94][0]_i_2_n_0\,
      O => \mem_reg[38][0]_i_1_n_0\
    );
\mem_reg[39][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[39][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[39][0]\
    );
\mem_reg[39][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => counterQ(4),
      I1 => counterQ(3),
      I2 => counterQ(5),
      I3 => \mem_reg[39][0]_i_2_n_0\,
      I4 => \mem_reg[95][0]_i_2_n_0\,
      O => \mem_reg[39][0]_i_1_n_0\
    );
\mem_reg[39][0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state,
      I1 => counterQ(6),
      O => \mem_reg[39][0]_i_2_n_0\
    );
\mem_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[3][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[3][0]\
    );
\mem_reg[3][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[99][0]_i_3_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[3][0]_i_1_n_0\
    );
\mem_reg[40][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[40][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[40][0]\
    );
\mem_reg[40][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \mem_reg[47][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[40][0]_i_1_n_0\
    );
\mem_reg[41][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[41][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[41][0]\
    );
\mem_reg[41][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \mem_reg[47][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[41][0]_i_1_n_0\
    );
\mem_reg[42][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[42][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[42][0]\
    );
\mem_reg[42][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \mem_reg[47][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[42][0]_i_1_n_0\
    );
\mem_reg[43][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[43][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[43][0]\
    );
\mem_reg[43][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \mem_reg[47][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[43][0]_i_1_n_0\
    );
\mem_reg[44][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[44][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[44][0]\
    );
\mem_reg[44][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \mem_reg[47][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[44][0]_i_1_n_0\
    );
\mem_reg[45][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[45][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[45][0]\
    );
\mem_reg[45][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \mem_reg[47][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[45][0]_i_1_n_0\
    );
\mem_reg[46][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[46][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[46][0]\
    );
\mem_reg[46][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \mem_reg[47][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[46][0]_i_1_n_0\
    );
\mem_reg[47][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[47][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[47][0]\
    );
\mem_reg[47][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \mem_reg[47][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[47][0]_i_1_n_0\
    );
\mem_reg[47][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => state,
      I1 => counterQ(6),
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[47][0]_i_2_n_0\
    );
\mem_reg[48][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[48][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[48][0]\
    );
\mem_reg[48][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \mem_reg[55][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[48][0]_i_1_n_0\
    );
\mem_reg[49][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[49][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[49][0]\
    );
\mem_reg[49][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \mem_reg[55][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[49][0]_i_1_n_0\
    );
\mem_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[4][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[4][0]\
    );
\mem_reg[4][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => counterQ(0),
      I1 => counterQ(1),
      I2 => counterQ(2),
      I3 => counterQ(3),
      I4 => \mem_reg[8][0]_i_2_n_0\,
      O => \mem_reg[4][0]_i_1_n_0\
    );
\mem_reg[50][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[50][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[50][0]\
    );
\mem_reg[50][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \mem_reg[55][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[50][0]_i_1_n_0\
    );
\mem_reg[51][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[51][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[51][0]\
    );
\mem_reg[51][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \mem_reg[55][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[51][0]_i_1_n_0\
    );
\mem_reg[52][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[52][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[52][0]\
    );
\mem_reg[52][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \mem_reg[55][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[52][0]_i_1_n_0\
    );
\mem_reg[53][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[53][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[53][0]\
    );
\mem_reg[53][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \mem_reg[55][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[53][0]_i_1_n_0\
    );
\mem_reg[54][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[54][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[54][0]\
    );
\mem_reg[54][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \mem_reg[55][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[54][0]_i_1_n_0\
    );
\mem_reg[55][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[55][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[55][0]\
    );
\mem_reg[55][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \mem_reg[55][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[55][0]_i_1_n_0\
    );
\mem_reg[55][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => state,
      I1 => counterQ(6),
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[55][0]_i_2_n_0\
    );
\mem_reg[56][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[56][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[56][0]\
    );
\mem_reg[56][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \mem_reg[63][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[56][0]_i_1_n_0\
    );
\mem_reg[57][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[57][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[57][0]\
    );
\mem_reg[57][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \mem_reg[63][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[57][0]_i_1_n_0\
    );
\mem_reg[58][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[58][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[58][0]\
    );
\mem_reg[58][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \mem_reg[63][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[58][0]_i_1_n_0\
    );
\mem_reg[59][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[59][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[59][0]\
    );
\mem_reg[59][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \mem_reg[63][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[59][0]_i_1_n_0\
    );
\mem_reg[5][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[5][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[5][0]\
    );
\mem_reg[5][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[93][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[5][0]_i_1_n_0\
    );
\mem_reg[60][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[60][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[60][0]\
    );
\mem_reg[60][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \mem_reg[63][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[60][0]_i_1_n_0\
    );
\mem_reg[61][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[61][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[61][0]\
    );
\mem_reg[61][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \mem_reg[63][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[61][0]_i_1_n_0\
    );
\mem_reg[62][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[62][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[62][0]\
    );
\mem_reg[62][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \mem_reg[63][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[62][0]_i_1_n_0\
    );
\mem_reg[63][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[63][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[63][0]\
    );
\mem_reg[63][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \mem_reg[63][0]_i_2_n_0\,
      I1 => counterQ(1),
      I2 => counterQ(0),
      I3 => counterQ(2),
      O => \mem_reg[63][0]_i_1_n_0\
    );
\mem_reg[63][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => state,
      I1 => counterQ(6),
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[63][0]_i_2_n_0\
    );
\mem_reg[64][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[64][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[64][0]\
    );
\mem_reg[64][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \mem_reg[64][0]_i_2_n_0\,
      I1 => counterQ(2),
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      I5 => \mem_reg[99][0]_i_2_n_0\,
      O => \mem_reg[64][0]_i_1_n_0\
    );
\mem_reg[64][0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterQ(0),
      I1 => counterQ(1),
      O => \mem_reg[64][0]_i_2_n_0\
    );
\mem_reg[65][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[65][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[65][0]\
    );
\mem_reg[65][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \mem_reg[68][0]_i_2_n_0\,
      I1 => counterQ(2),
      I2 => counterQ(0),
      I3 => counterQ(1),
      I4 => \mem_reg[99][0]_i_2_n_0\,
      O => \mem_reg[65][0]_i_1_n_0\
    );
\mem_reg[66][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[66][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[66][0]\
    );
\mem_reg[66][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \mem_reg[68][0]_i_2_n_0\,
      I1 => counterQ(2),
      I2 => counterQ(0),
      I3 => counterQ(1),
      I4 => \mem_reg[99][0]_i_2_n_0\,
      O => \mem_reg[66][0]_i_1_n_0\
    );
\mem_reg[67][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[67][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[67][0]\
    );
\mem_reg[67][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[99][0]_i_3_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[67][0]_i_1_n_0\
    );
\mem_reg[68][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[68][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[68][0]\
    );
\mem_reg[68][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[68][0]_i_2_n_0\,
      I1 => counterQ(2),
      I2 => counterQ(0),
      I3 => counterQ(1),
      I4 => \mem_reg[99][0]_i_2_n_0\,
      O => \mem_reg[68][0]_i_1_n_0\
    );
\mem_reg[68][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => counterQ(5),
      I1 => counterQ(3),
      I2 => counterQ(4),
      O => \mem_reg[68][0]_i_2_n_0\
    );
\mem_reg[69][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[69][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[69][0]\
    );
\mem_reg[69][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[93][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[69][0]_i_1_n_0\
    );
\mem_reg[6][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[6][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[6][0]\
    );
\mem_reg[6][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[94][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[6][0]_i_1_n_0\
    );
\mem_reg[70][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[70][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[70][0]\
    );
\mem_reg[70][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[94][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[70][0]_i_1_n_0\
    );
\mem_reg[71][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[71][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[71][0]\
    );
\mem_reg[71][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[95][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[71][0]_i_1_n_0\
    );
\mem_reg[72][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[72][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[72][0]\
    );
\mem_reg[72][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[96][0]_i_2_n_0\,
      I1 => counterQ(3),
      I2 => counterQ(5),
      I3 => counterQ(4),
      I4 => \mem_reg[99][0]_i_2_n_0\,
      O => \mem_reg[72][0]_i_1_n_0\
    );
\mem_reg[73][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[73][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[73][0]\
    );
\mem_reg[73][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[97][0]_i_2_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[73][0]_i_1_n_0\
    );
\mem_reg[74][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[74][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[74][0]\
    );
\mem_reg[74][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[98][0]_i_2_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[74][0]_i_1_n_0\
    );
\mem_reg[75][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[75][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[75][0]\
    );
\mem_reg[75][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[99][0]_i_3_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[75][0]_i_1_n_0\
    );
\mem_reg[76][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[76][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[76][0]\
    );
\mem_reg[76][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[92][0]_i_2_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[76][0]_i_1_n_0\
    );
\mem_reg[77][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[77][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[77][0]\
    );
\mem_reg[77][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[93][0]_i_2_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[77][0]_i_1_n_0\
    );
\mem_reg[78][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[78][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[78][0]\
    );
\mem_reg[78][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[94][0]_i_2_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[78][0]_i_1_n_0\
    );
\mem_reg[79][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[79][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[79][0]\
    );
\mem_reg[79][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[95][0]_i_2_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[79][0]_i_1_n_0\
    );
\mem_reg[7][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[7][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[7][0]\
    );
\mem_reg[7][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[95][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[7][0]_i_1_n_0\
    );
\mem_reg[80][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[80][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[80][0]\
    );
\mem_reg[80][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \mem_reg[80][0]_i_2_n_0\,
      I1 => counterQ(2),
      I2 => counterQ(0),
      I3 => counterQ(1),
      I4 => \mem_reg[99][0]_i_2_n_0\,
      O => \mem_reg[80][0]_i_1_n_0\
    );
\mem_reg[80][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => counterQ(5),
      I1 => counterQ(3),
      I2 => counterQ(4),
      O => \mem_reg[80][0]_i_2_n_0\
    );
\mem_reg[81][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[81][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[81][0]\
    );
\mem_reg[81][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[97][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[81][0]_i_1_n_0\
    );
\mem_reg[82][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[82][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[82][0]\
    );
\mem_reg[82][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[98][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[82][0]_i_1_n_0\
    );
\mem_reg[83][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[83][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[83][0]\
    );
\mem_reg[83][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[99][0]_i_3_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[83][0]_i_1_n_0\
    );
\mem_reg[84][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[84][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[84][0]\
    );
\mem_reg[84][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[92][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[84][0]_i_1_n_0\
    );
\mem_reg[85][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[85][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[85][0]\
    );
\mem_reg[85][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[93][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[85][0]_i_1_n_0\
    );
\mem_reg[86][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[86][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[86][0]\
    );
\mem_reg[86][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[94][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[86][0]_i_1_n_0\
    );
\mem_reg[87][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[87][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[87][0]\
    );
\mem_reg[87][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[95][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[87][0]_i_1_n_0\
    );
\mem_reg[88][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[88][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[88][0]\
    );
\mem_reg[88][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[96][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[88][0]_i_1_n_0\
    );
\mem_reg[89][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[89][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[89][0]\
    );
\mem_reg[89][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[97][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[89][0]_i_1_n_0\
    );
\mem_reg[8][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[8][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[8][0]\
    );
\mem_reg[8][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => counterQ(0),
      I1 => counterQ(1),
      I2 => counterQ(3),
      I3 => counterQ(2),
      I4 => \mem_reg[8][0]_i_2_n_0\,
      O => \mem_reg[8][0]_i_1_n_0\
    );
\mem_reg[8][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => state,
      I1 => counterQ(6),
      I2 => counterQ(4),
      I3 => counterQ(5),
      O => \mem_reg[8][0]_i_2_n_0\
    );
\mem_reg[90][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[90][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[90][0]\
    );
\mem_reg[90][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[98][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[90][0]_i_1_n_0\
    );
\mem_reg[91][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[91][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[91][0]\
    );
\mem_reg[91][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[99][0]_i_3_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[91][0]_i_1_n_0\
    );
\mem_reg[92][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[92][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[92][0]\
    );
\mem_reg[92][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[92][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[92][0]_i_1_n_0\
    );
\mem_reg[92][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counterQ(2),
      I1 => counterQ(0),
      I2 => counterQ(1),
      O => \mem_reg[92][0]_i_2_n_0\
    );
\mem_reg[93][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[93][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[93][0]\
    );
\mem_reg[93][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[93][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[93][0]_i_1_n_0\
    );
\mem_reg[93][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => counterQ(2),
      I1 => counterQ(0),
      I2 => counterQ(1),
      O => \mem_reg[93][0]_i_2_n_0\
    );
\mem_reg[94][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[94][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[94][0]\
    );
\mem_reg[94][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[94][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[94][0]_i_1_n_0\
    );
\mem_reg[94][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => counterQ(2),
      I1 => counterQ(0),
      I2 => counterQ(1),
      O => \mem_reg[94][0]_i_2_n_0\
    );
\mem_reg[95][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[95][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[95][0]\
    );
\mem_reg[95][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[95][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[95][0]_i_1_n_0\
    );
\mem_reg[95][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => counterQ(2),
      I1 => counterQ(0),
      I2 => counterQ(1),
      O => \mem_reg[95][0]_i_2_n_0\
    );
\mem_reg[96][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[96][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[96][0]\
    );
\mem_reg[96][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => counterQ(5),
      I1 => counterQ(3),
      I2 => counterQ(4),
      I3 => \mem_reg[96][0]_i_2_n_0\,
      I4 => \mem_reg[99][0]_i_2_n_0\,
      O => \mem_reg[96][0]_i_1_n_0\
    );
\mem_reg[96][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => counterQ(2),
      I1 => counterQ(0),
      I2 => counterQ(1),
      O => \mem_reg[96][0]_i_2_n_0\
    );
\mem_reg[97][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[97][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[97][0]\
    );
\mem_reg[97][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[97][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[97][0]_i_1_n_0\
    );
\mem_reg[97][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => counterQ(2),
      I1 => counterQ(0),
      I2 => counterQ(1),
      O => \mem_reg[97][0]_i_2_n_0\
    );
\mem_reg[98][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[98][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[98][0]\
    );
\mem_reg[98][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[98][0]_i_2_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[98][0]_i_1_n_0\
    );
\mem_reg[98][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => counterQ(2),
      I1 => counterQ(0),
      I2 => counterQ(1),
      O => \mem_reg[98][0]_i_2_n_0\
    );
\mem_reg[99][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[99][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[99][0]\
    );
\mem_reg[99][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[99][0]_i_2_n_0\,
      I1 => \mem_reg[99][0]_i_3_n_0\,
      I2 => counterQ(5),
      I3 => counterQ(3),
      I4 => counterQ(4),
      O => \mem_reg[99][0]_i_1_n_0\
    );
\mem_reg[99][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222A00000000"
    )
        port map (
      I0 => state,
      I1 => counterQ(5),
      I2 => counterQ(2),
      I3 => counterQ(3),
      I4 => counterQ(4),
      I5 => counterQ(6),
      O => \mem_reg[99][0]_i_2_n_0\
    );
\mem_reg[99][0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => counterQ(2),
      I1 => counterQ(0),
      I2 => counterQ(1),
      O => \mem_reg[99][0]_i_3_n_0\
    );
\mem_reg[9][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tdcOut,
      G => \mem_reg[9][0]_i_1_n_0\,
      GE => '1',
      Q => \mem_reg_n_0_[9][0]\
    );
\mem_reg[9][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \mem_reg[39][0]_i_2_n_0\,
      I1 => \mem_reg[97][0]_i_2_n_0\,
      I2 => counterQ(3),
      I3 => counterQ(5),
      I4 => counterQ(4),
      O => \mem_reg[9][0]_i_1_n_0\
    );
\rdData_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => AxiSupporter1_n_5,
      G => \rdData__0\,
      GE => '1',
      Q => rdData
    );
tdc1: entity work.design_1_top_0_0_tdc
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      tdcOut => tdcOut
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_top_0_0 : entity is "top,Vivado 2019.2";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_bvalid\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3) <= \<const0>\;
  S_AXI_RDATA(2) <= \<const0>\;
  S_AXI_RDATA(1) <= \<const0>\;
  S_AXI_RDATA(0) <= \^s_axi_rdata\(0);
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_RVALID <= \^s_axi_arready\;
  S_AXI_WREADY <= \^s_axi_bvalid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_top_0_0_top
     port map (
      \FSM_sequential_state_reg[1]\ => \^s_axi_bvalid\,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(9 downto 0) => S_AXI_ARADDR(9 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => \^s_axi_arready\,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_RDATA(0) => \^s_axi_rdata\(0),
      S_AXI_RREADY => S_AXI_RREADY
    );
end STRUCTURE;
