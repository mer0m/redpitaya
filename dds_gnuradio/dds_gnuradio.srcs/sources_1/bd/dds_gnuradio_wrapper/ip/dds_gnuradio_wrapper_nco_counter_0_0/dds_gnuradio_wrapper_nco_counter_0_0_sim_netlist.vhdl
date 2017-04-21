-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Thu Mar 30 09:07:19 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/dds_gnuradio/dds_gnuradio.srcs/sources_1/bd/dds_gnuradio_wrapper/ip/dds_gnuradio_wrapper_nco_counter_0_0/dds_gnuradio_wrapper_nco_counter_0_0_sim_netlist.vhdl
-- Design      : dds_gnuradio_wrapper_nco_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_cos_rom is
  port (
    dds_cos_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dds_sin_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_a_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_a_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_a_reg_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_a_reg_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_a_reg_4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ref_clk_i : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    counter_scale_s : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpt_off_s : in STD_LOGIC_VECTOR ( 9 downto 0 );
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \counter_scale_s__0\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_cos_rom : entity is "nco_counter_cos_rom";
end dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_cos_rom;

architecture STRUCTURE of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_cos_rom is
  signal data_a_reg_i_1_n_0 : STD_LOGIC;
  signal data_a_reg_n_14 : STD_LOGIC;
  signal data_a_reg_n_15 : STD_LOGIC;
  signal NLW_data_a_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_a_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_a_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of data_a_reg : label is "COMMON";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of data_a_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_a_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of data_a_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of data_a_reg : label is "nco_inst1/rom_10.rom_inst/data_a";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of data_a_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of data_a_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of data_a_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of data_a_reg : label is 15;
begin
\counter_cos_off_s_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(7),
      I1 => cpt_off_s(7),
      O => data_a_reg_1(3)
    );
\counter_cos_off_s_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(6),
      I1 => cpt_off_s(6),
      O => data_a_reg_1(2)
    );
\counter_cos_off_s_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(5),
      I1 => cpt_off_s(5),
      O => data_a_reg_1(1)
    );
\counter_cos_off_s_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(4),
      I1 => cpt_off_s(4),
      O => data_a_reg_1(0)
    );
\counter_cos_off_s_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter_scale_s(0),
      I1 => cpt_off_s(9),
      O => S(1)
    );
\counter_cos_off_s_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(8),
      I1 => cpt_off_s(8),
      O => S(0)
    );
counter_cos_off_s_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(3),
      I1 => cpt_off_s(3),
      O => data_a_reg_4(3)
    );
counter_cos_off_s_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(2),
      I1 => cpt_off_s(2),
      O => data_a_reg_4(2)
    );
counter_cos_off_s_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(1),
      I1 => cpt_off_s(1),
      O => data_a_reg_4(1)
    );
counter_cos_off_s_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(0),
      I1 => cpt_off_s(0),
      O => data_a_reg_4(0)
    );
\counter_sin_off_s_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => O(0),
      I1 => cpt_off_s(7),
      O => data_a_reg_2(3)
    );
\counter_sin_off_s_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(6),
      I1 => cpt_off_s(6),
      O => data_a_reg_2(2)
    );
\counter_sin_off_s_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(5),
      I1 => cpt_off_s(5),
      O => data_a_reg_2(1)
    );
\counter_sin_off_s_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(4),
      I1 => cpt_off_s(4),
      O => data_a_reg_2(0)
    );
\counter_sin_off_s_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => O(2),
      I1 => cpt_off_s(9),
      O => data_a_reg_0(1)
    );
\counter_sin_off_s_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => O(1),
      I1 => cpt_off_s(8),
      O => data_a_reg_0(0)
    );
counter_sin_off_s_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(3),
      I1 => cpt_off_s(3),
      O => data_a_reg_3(3)
    );
counter_sin_off_s_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(2),
      I1 => cpt_off_s(2),
      O => data_a_reg_3(2)
    );
counter_sin_off_s_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(1),
      I1 => cpt_off_s(1),
      O => data_a_reg_3(1)
    );
counter_sin_off_s_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(0),
      I1 => cpt_off_s(0),
      O => data_a_reg_3(0)
    );
data_a_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"7F747F857F967FA67FB47FC17FCC7FD77FE07FE87FEF7FF57FF97FFC7FFE7FFF",
      INIT_01 => X"7DAE7DD47DF87E1B7E3D7E5E7E7D7E9B7EB87ED47EEE7F087F207F367F4C7F60",
      INIT_02 => X"7AB37AEB7B237B597B8E7BC27BF57C277C577C867CB47CE17D0C7D377D607D88",
      INIT_03 => X"768876D3771E776777AF77F5783B787F78C379057946798579C47A017A3E7A79",
      INIT_04 => X"7138719671F2724D72A77300735873AE7404745874AC74FE754F759F75EE763B",
      INIT_05 => X"6AD16B3F6BAD6C196C846CEE6D586DC06E276E8D6EF26F556FB8701A707A70DA",
      INIT_06 => X"636263E0645E64DA655665D0664966C2673967B06825689A690D698069F16A62",
      INIT_07 => X"5AFD5B8A5C175CA25D2C5DB65E3F5EC65F4D5FD3605860DC615F61E1626262E3",
      INIT_08 => X"51B8525252EC5385541D54B4554B55E056755709579C582F58C0595159E05A6F",
      INIT_09 => X"47A9484F48F5499A4A3E4AE24B844C274CC84D694E094EA84F464FE45081511D",
      INIT_0A => X"3CE83D993E493EF93FA84056410341B1425D430943B4445E450845B1465A4701",
      INIT_0B => X"3191324B330433BC3474352B35E23698374E380338B8396C3A203AD33B853C37",
      INIT_0C => X"25C02680274027FF28BE297D2A3B2AF92BB62C732D302DEC2EA82F63301D30D8",
      INIT_0D => X"19921A571B1C1BE01CA41D691E2C1EF01FB32076213821FA22BC237E243F2500",
      INIT_0E => X"0D240DEC0EB40F7C1044110B11D3129A1361142814EE15B5167B1741180718CC",
      INIT_0F => X"0096015F022802F203BB0484054D061606DF07A80871093A0A020ACB0B930C5C",
      INIT_10 => X"F406F4CFF597F660F729F7F1F8BAF983FA4CFB15FBDFFCA8FD71FE3AFF03FFCD",
      INIT_11 => X"E794E85AE920E9E6EAACEB73EC3AED01EDC8EE8FEF56F01EF0E6F1AEF276F33E",
      INIT_12 => X"DB5FDC20DCE1DDA3DE65DF27DFEAE0ADE170E234E2F7E3BCE480E545E60AE6CF",
      INIT_13 => X"CF83D03ED0F9D1B4D270D32CD3E9D4A6D564D622D6E0D79FD85ED91ED9DEDA9E",
      INIT_14 => X"C420C4D2C585C638C6ECC7A0C855C90BC9C1CA77CB2ECBE6CC9ECD57CE10CEC9",
      INIT_15 => X"B950B9F8BAA1BB4BBBF5BCA0BD4BBDF7BEA4BF51BFFFC0AEC15DC20DC2BDC36E",
      INIT_16 => X"AF2FAFCCB069B107B1A6B245B2E6B387B428B4CBB56EB612B6B7B75CB802B8A9",
      INIT_17 => X"A5D6A665A6F5A786A818A8ABA93FA9D3AA68AAFEAB95AC2DACC5AD5FADF9AE94",
      INIT_18 => X"9D5B9DDC9E5E9EE09F649FE8A06EA0F4A17BA204A28DA317A3A2A42DA4BAA548",
      INIT_19 => X"95D4964596B7972A979E981398899900997899F19A6B9AE69B629BDF9C5D9CDC",
      INIT_1A => X"8F548FB49015907790DA913F91A4920B927292DB934493AF941B948894F69564",
      INIT_1B => X"89E98A388A878AD78B298B7C8BD08C258C7B8CD28D2A8D848DDE8E3A8E978EF5",
      INIT_1C => X"85A385DE861B8659869886D9871A875D87A187E6882C887388BC89058950899C",
      INIT_1D => X"828A82B382DC830783338361838F83BF83F084228456848A84C084F7852F8568",
      INIT_1E => X"80A880BD80D380EA8103811D813881548172819181B181D281F48218823D8263",
      INIT_1F => X"8000800180038007800C8012801A8022802C8037804480518060807080818094",
      INIT_20 => X"8094808180708060805180448037802C8022801A8012800C8007800380018000",
      INIT_21 => X"8263823D821881F481D281B18191817281548138811D810380EA80D380BD80A8",
      INIT_22 => X"8568852F84F784C0848A8456842283F083BF838F83618333830782DC82B3828A",
      INIT_23 => X"899C8950890588BC8873882C87E687A1875D871A86D986988659861B85DE85A3",
      INIT_24 => X"8EF58E978E3A8DDE8D848D2A8CD28C7B8C258BD08B7C8B298AD78A878A3889E9",
      INIT_25 => X"956494F69488941B93AF934492DB9272920B91A4913F90DA907790158FB48F54",
      INIT_26 => X"9CDC9C5D9BDF9B629AE69A6B99F19978990098899813979E972A96B7964595D4",
      INIT_27 => X"A548A4BAA42DA3A2A317A28DA204A17BA0F4A06E9FE89F649EE09E5E9DDC9D5B",
      INIT_28 => X"AE94ADF9AD5FACC5AC2DAB95AAFEAA68A9D3A93FA8ABA818A786A6F5A665A5D6",
      INIT_29 => X"B8A9B802B75CB6B7B612B56EB4CBB428B387B2E6B245B1A6B107B069AFCCAF2F",
      INIT_2A => X"C36EC2BDC20DC15DC0AEBFFFBF51BEA4BDF7BD4BBCA0BBF5BB4BBAA1B9F8B950",
      INIT_2B => X"CEC9CE10CD57CC9ECBE6CB2ECA77C9C1C90BC855C7A0C6ECC638C585C4D2C420",
      INIT_2C => X"DA9ED9DED91ED85ED79FD6E0D622D564D4A6D3E9D32CD270D1B4D0F9D03ECF83",
      INIT_2D => X"E6CFE60AE545E480E3BCE2F7E234E170E0ADDFEADF27DE65DDA3DCE1DC20DB5F",
      INIT_2E => X"F33EF276F1AEF0E6F01EEF56EE8FEDC8ED01EC3AEB73EAACE9E6E920E85AE794",
      INIT_2F => X"FFCDFF03FE3AFD71FCA8FBDFFB15FA4CF983F8BAF7F1F729F660F597F4CFF406",
      INIT_30 => X"0C5C0B930ACB0A02093A087107A806DF0616054D048403BB02F20228015F0096",
      INIT_31 => X"18CC18071741167B15B514EE14281361129A11D3110B10440F7C0EB40DEC0D24",
      INIT_32 => X"2500243F237E22BC21FA213820761FB31EF01E2C1D691CA41BE01B1C1A571992",
      INIT_33 => X"30D8301D2F632EA82DEC2D302C732BB62AF92A3B297D28BE27FF2740268025C0",
      INIT_34 => X"3C373B853AD33A20396C38B83803374E369835E2352B347433BC3304324B3191",
      INIT_35 => X"4701465A45B14508445E43B44309425D41B1410340563FA83EF93E493D993CE8",
      INIT_36 => X"511D50814FE44F464EA84E094D694CC84C274B844AE24A3E499A48F5484F47A9",
      INIT_37 => X"5A6F59E0595158C0582F579C5709567555E0554B54B4541D538552EC525251B8",
      INIT_38 => X"62E3626261E1615F60DC60585FD35F4D5EC65E3F5DB65D2C5CA25C175B8A5AFD",
      INIT_39 => X"6A6269F16980690D689A682567B0673966C2664965D0655664DA645E63E06362",
      INIT_3A => X"70DA707A701A6FB86F556EF26E8D6E276DC06D586CEE6C846C196BAD6B3F6AD1",
      INIT_3B => X"763B75EE759F754F74FE74AC7458740473AE7358730072A7724D71F271967138",
      INIT_3C => X"7A797A3E7A0179C479857946790578C3787F783B77F577AF7767771E76D37688",
      INIT_3D => X"7D887D607D377D0C7CE17CB47C867C577C277BF57BC27B8E7B597B237AEB7AB3",
      INIT_3E => X"7F607F4C7F367F207F087EEE7ED47EB87E9B7E7D7E5E7E3D7E1B7DF87DD47DAE",
      INIT_3F => X"7FFF7FFE7FFC7FF97FF57FEF7FE87FE07FD77FCC7FC17FB47FA67F967F857F74",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => ADDRARDADDR(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 5) => ADDRBWRADDR(8 downto 0),
      ADDRBWRADDR(4) => data_a_reg_i_1_n_0,
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => ref_clk_i,
      CLKBWRCLK => ref_clk_i,
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 2) => dds_cos_o(13 downto 0),
      DOADO(1) => data_a_reg_n_14,
      DOADO(0) => data_a_reg_n_15,
      DOBDO(15 downto 2) => dds_sin_o(13 downto 0),
      DOBDO(1 downto 0) => NLW_data_a_reg_DOBDO_UNCONNECTED(1 downto 0),
      DOPADOP(1 downto 0) => NLW_data_a_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_data_a_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
data_a_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_scale_s__0\(0),
      I1 => cpt_off_s(0),
      O => data_a_reg_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_handcomm is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    addr_s : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    poff_sw_s_reg : out STD_LOGIC;
    pinc_sw_s_reg : out STD_LOGIC;
    \cpt_step_s_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cpt_off_s_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    poff_sw_s : in STD_LOGIC;
    pinc_sw_s : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_handcomm : entity is "nco_counter_handcomm";
end dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_handcomm;

architecture STRUCTURE of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_handcomm is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal addr_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \addr_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \^addr_s\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal read_addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal write_addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_reg[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_1\ : label is "soft_lutpair1";
begin
  E(0) <= \^e\(0);
  addr_s(1 downto 0) <= \^addr_s\(1 downto 0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\addr_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => read_addr_s(0),
      I1 => \^e\(0),
      I2 => addr_reg(0),
      I3 => \addr_reg[1]_i_2_n_0\,
      I4 => write_addr_s(0),
      O => \^addr_s\(0)
    );
\addr_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => read_addr_s(1),
      I1 => \^e\(0),
      I2 => addr_reg(1),
      I3 => \addr_reg[1]_i_2_n_0\,
      I4 => write_addr_s(1),
      O => \^addr_s\(1)
    );
\addr_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      I3 => \^s00_axi_wready\,
      O => \addr_reg[1]_i_2_n_0\
    );
\addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^addr_s\(0),
      Q => addr_reg(0),
      R => '0'
    );
\addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^addr_s\(1),
      Q => addr_reg(1),
      R => '0'
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => read_addr_s(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => read_addr_s(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => read_addr_s(0),
      S => s00_axi_reset
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => read_addr_s(1),
      S => s00_axi_reset
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s00_axi_arready\,
      R => s00_axi_reset
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_awready\,
      I4 => write_addr_s(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_awready\,
      I4 => write_addr_s(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => write_addr_s(0),
      R => s00_axi_reset
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => write_addr_s(1),
      R => s00_axi_reset
    );
axi_awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^s00_axi_awready\,
      R => s00_axi_reset
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => s00_axi_reset
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => s00_axi_reset
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => s00_axi_reset
    );
\cpt_off_s[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => \^addr_s\(1),
      I2 => \^s00_axi_wready\,
      I3 => \^s00_axi_awready\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wvalid,
      O => \cpt_off_s_reg[0]\(0)
    );
\cpt_step_s[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \^addr_s\(1),
      I1 => \^addr_s\(0),
      I2 => \^s00_axi_wready\,
      I3 => \^s00_axi_awready\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wvalid,
      O => \cpt_step_s_reg[0]\(0)
    );
pinc_sw_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \^addr_s\(1),
      I2 => \^addr_s\(0),
      I3 => \addr_reg[1]_i_2_n_0\,
      I4 => pinc_sw_s,
      O => pinc_sw_s_reg
    );
poff_sw_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \^addr_s\(1),
      I2 => \^addr_s\(0),
      I3 => \addr_reg[1]_i_2_n_0\,
      I4 => poff_sw_s,
      O => poff_sw_s_reg
    );
\readdata_s[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_gnuradio_wrapper_nco_counter_0_0_wb_nco_counter is
  port (
    pinc_sw_s : out STD_LOGIC;
    poff_sw_s : out STD_LOGIC;
    cpt_off_mux_s : out STD_LOGIC_VECTOR ( 9 downto 0 );
    cpt_step_mux_s : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_reset : in STD_LOGIC;
    pinc_sw_s_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    poff_sw_s_reg_0 : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    poff_i : in STD_LOGIC_VECTOR ( 9 downto 0 );
    poff_sw2_s : in STD_LOGIC;
    pinc_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pinc_sw2_s : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_wready_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_arready_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dds_gnuradio_wrapper_nco_counter_0_0_wb_nco_counter : entity is "wb_nco_counter";
end dds_gnuradio_wrapper_nco_counter_0_0_wb_nco_counter;

architecture STRUCTURE of dds_gnuradio_wrapper_nco_counter_0_0_wb_nco_counter is
  signal \cpt_off_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[10]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[11]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[12]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[13]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[14]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[15]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[16]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[17]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[18]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[19]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[20]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[21]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[22]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[23]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[24]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[25]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[26]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[27]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[28]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[29]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[30]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[31]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[7]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[8]\ : STD_LOGIC;
  signal \cpt_off_s_reg_n_0_[9]\ : STD_LOGIC;
  signal cpt_step_s : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^pinc_sw_s\ : STD_LOGIC;
  signal \^poff_sw_s\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[0]_srl2_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[10]_srl2_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[11]_srl2_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[12]_srl2_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[13]_srl2_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[14]_srl2_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[15]_srl2_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[16]_srl2_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[17]_srl2_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[18]_srl2_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[19]_srl2_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[1]_srl2_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[20]_srl2_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[21]_srl2_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[22]_srl2_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[23]_srl2_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[24]_srl2_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[25]_srl2_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[26]_srl2_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[27]_srl2_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[28]_srl2_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[29]_srl2_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[2]_srl2_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[30]_srl2_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[31]_srl2_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[3]_srl2_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[4]_srl2_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[5]_srl2_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[6]_srl2_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[7]_srl2_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[8]_srl2_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cpt_inc2_s_reg[9]_srl2_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cpt_off2_s_reg[0]_srl2_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cpt_off2_s_reg[1]_srl2_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cpt_off2_s_reg[2]_srl2_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cpt_off2_s_reg[3]_srl2_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cpt_off2_s_reg[4]_srl2_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cpt_off2_s_reg[5]_srl2_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cpt_off2_s_reg[6]_srl2_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cpt_off2_s_reg[7]_srl2_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cpt_off2_s_reg[8]_srl2_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cpt_off2_s_reg[9]_srl2_i_1\ : label is "soft_lutpair7";
begin
  pinc_sw_s <= \^pinc_sw_s\;
  poff_sw_s <= \^poff_sw_s\;
\cpt_inc2_s_reg[0]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(0),
      I1 => pinc_i(0),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(0)
    );
\cpt_inc2_s_reg[10]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(10),
      I1 => pinc_i(10),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(10)
    );
\cpt_inc2_s_reg[11]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(11),
      I1 => pinc_i(11),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(11)
    );
\cpt_inc2_s_reg[12]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(12),
      I1 => pinc_i(12),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(12)
    );
\cpt_inc2_s_reg[13]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(13),
      I1 => pinc_i(13),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(13)
    );
\cpt_inc2_s_reg[14]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(14),
      I1 => pinc_i(14),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(14)
    );
\cpt_inc2_s_reg[15]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(15),
      I1 => pinc_i(15),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(15)
    );
\cpt_inc2_s_reg[16]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(16),
      I1 => pinc_i(16),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(16)
    );
\cpt_inc2_s_reg[17]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(17),
      I1 => pinc_i(17),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(17)
    );
\cpt_inc2_s_reg[18]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(18),
      I1 => pinc_i(18),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(18)
    );
\cpt_inc2_s_reg[19]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(19),
      I1 => pinc_i(19),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(19)
    );
\cpt_inc2_s_reg[1]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(1),
      I1 => pinc_i(1),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(1)
    );
\cpt_inc2_s_reg[20]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(20),
      I1 => pinc_i(20),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(20)
    );
\cpt_inc2_s_reg[21]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(21),
      I1 => pinc_i(21),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(21)
    );
\cpt_inc2_s_reg[22]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(22),
      I1 => pinc_i(22),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(22)
    );
\cpt_inc2_s_reg[23]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(23),
      I1 => pinc_i(23),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(23)
    );
\cpt_inc2_s_reg[24]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(24),
      I1 => pinc_i(24),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(24)
    );
\cpt_inc2_s_reg[25]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(25),
      I1 => pinc_i(25),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(25)
    );
\cpt_inc2_s_reg[26]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(26),
      I1 => pinc_i(26),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(26)
    );
\cpt_inc2_s_reg[27]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(27),
      I1 => pinc_i(27),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(27)
    );
\cpt_inc2_s_reg[28]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(28),
      I1 => pinc_i(28),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(28)
    );
\cpt_inc2_s_reg[29]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(29),
      I1 => pinc_i(29),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(29)
    );
\cpt_inc2_s_reg[2]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(2),
      I1 => pinc_i(2),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(2)
    );
\cpt_inc2_s_reg[30]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(30),
      I1 => pinc_i(30),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(30)
    );
\cpt_inc2_s_reg[31]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(31),
      I1 => pinc_i(31),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(31)
    );
\cpt_inc2_s_reg[3]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(3),
      I1 => pinc_i(3),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(3)
    );
\cpt_inc2_s_reg[4]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(4),
      I1 => pinc_i(4),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(4)
    );
\cpt_inc2_s_reg[5]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(5),
      I1 => pinc_i(5),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(5)
    );
\cpt_inc2_s_reg[6]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(6),
      I1 => pinc_i(6),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(6)
    );
\cpt_inc2_s_reg[7]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(7),
      I1 => pinc_i(7),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(7)
    );
\cpt_inc2_s_reg[8]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(8),
      I1 => pinc_i(8),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(8)
    );
\cpt_inc2_s_reg[9]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cpt_step_s(9),
      I1 => pinc_i(9),
      I2 => pinc_sw2_s,
      O => cpt_step_mux_s(9)
    );
\cpt_off2_s_reg[0]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \cpt_off_s_reg_n_0_[0]\,
      I1 => poff_i(0),
      I2 => poff_sw2_s,
      O => cpt_off_mux_s(0)
    );
\cpt_off2_s_reg[1]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \cpt_off_s_reg_n_0_[1]\,
      I1 => poff_i(1),
      I2 => poff_sw2_s,
      O => cpt_off_mux_s(1)
    );
\cpt_off2_s_reg[2]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \cpt_off_s_reg_n_0_[2]\,
      I1 => poff_i(2),
      I2 => poff_sw2_s,
      O => cpt_off_mux_s(2)
    );
\cpt_off2_s_reg[3]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \cpt_off_s_reg_n_0_[3]\,
      I1 => poff_i(3),
      I2 => poff_sw2_s,
      O => cpt_off_mux_s(3)
    );
\cpt_off2_s_reg[4]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \cpt_off_s_reg_n_0_[4]\,
      I1 => poff_i(4),
      I2 => poff_sw2_s,
      O => cpt_off_mux_s(4)
    );
\cpt_off2_s_reg[5]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \cpt_off_s_reg_n_0_[5]\,
      I1 => poff_i(5),
      I2 => poff_sw2_s,
      O => cpt_off_mux_s(5)
    );
\cpt_off2_s_reg[6]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \cpt_off_s_reg_n_0_[6]\,
      I1 => poff_i(6),
      I2 => poff_sw2_s,
      O => cpt_off_mux_s(6)
    );
\cpt_off2_s_reg[7]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \cpt_off_s_reg_n_0_[7]\,
      I1 => poff_i(7),
      I2 => poff_sw2_s,
      O => cpt_off_mux_s(7)
    );
\cpt_off2_s_reg[8]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \cpt_off_s_reg_n_0_[8]\,
      I1 => poff_i(8),
      I2 => poff_sw2_s,
      O => cpt_off_mux_s(8)
    );
\cpt_off2_s_reg[9]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \cpt_off_s_reg_n_0_[9]\,
      I1 => poff_i(9),
      I2 => poff_sw2_s,
      O => cpt_off_mux_s(9)
    );
\cpt_off_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(0),
      Q => \cpt_off_s_reg_n_0_[0]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(10),
      Q => \cpt_off_s_reg_n_0_[10]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(11),
      Q => \cpt_off_s_reg_n_0_[11]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(12),
      Q => \cpt_off_s_reg_n_0_[12]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(13),
      Q => \cpt_off_s_reg_n_0_[13]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(14),
      Q => \cpt_off_s_reg_n_0_[14]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(15),
      Q => \cpt_off_s_reg_n_0_[15]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(16),
      Q => \cpt_off_s_reg_n_0_[16]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(17),
      Q => \cpt_off_s_reg_n_0_[17]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(18),
      Q => \cpt_off_s_reg_n_0_[18]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(19),
      Q => \cpt_off_s_reg_n_0_[19]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(1),
      Q => \cpt_off_s_reg_n_0_[1]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(20),
      Q => \cpt_off_s_reg_n_0_[20]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(21),
      Q => \cpt_off_s_reg_n_0_[21]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(22),
      Q => \cpt_off_s_reg_n_0_[22]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(23),
      Q => \cpt_off_s_reg_n_0_[23]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(24),
      Q => \cpt_off_s_reg_n_0_[24]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(25),
      Q => \cpt_off_s_reg_n_0_[25]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(26),
      Q => \cpt_off_s_reg_n_0_[26]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(27),
      Q => \cpt_off_s_reg_n_0_[27]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(28),
      Q => \cpt_off_s_reg_n_0_[28]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(29),
      Q => \cpt_off_s_reg_n_0_[29]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(2),
      Q => \cpt_off_s_reg_n_0_[2]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(30),
      Q => \cpt_off_s_reg_n_0_[30]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(31),
      Q => \cpt_off_s_reg_n_0_[31]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(3),
      Q => \cpt_off_s_reg_n_0_[3]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(4),
      Q => \cpt_off_s_reg_n_0_[4]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(5),
      Q => \cpt_off_s_reg_n_0_[5]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(6),
      Q => \cpt_off_s_reg_n_0_[6]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(7),
      Q => \cpt_off_s_reg_n_0_[7]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(8),
      Q => \cpt_off_s_reg_n_0_[8]\,
      R => s00_axi_reset
    );
\cpt_off_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(9),
      Q => \cpt_off_s_reg_n_0_[9]\,
      R => s00_axi_reset
    );
\cpt_step_s_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(0),
      Q => cpt_step_s(0),
      S => s00_axi_reset
    );
\cpt_step_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(10),
      Q => cpt_step_s(10),
      R => s00_axi_reset
    );
\cpt_step_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(11),
      Q => cpt_step_s(11),
      R => s00_axi_reset
    );
\cpt_step_s_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(12),
      Q => cpt_step_s(12),
      S => s00_axi_reset
    );
\cpt_step_s_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(13),
      Q => cpt_step_s(13),
      S => s00_axi_reset
    );
\cpt_step_s_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(14),
      Q => cpt_step_s(14),
      S => s00_axi_reset
    );
\cpt_step_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(15),
      Q => cpt_step_s(15),
      R => s00_axi_reset
    );
\cpt_step_s_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(16),
      Q => cpt_step_s(16),
      S => s00_axi_reset
    );
\cpt_step_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(17),
      Q => cpt_step_s(17),
      R => s00_axi_reset
    );
\cpt_step_s_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(18),
      Q => cpt_step_s(18),
      S => s00_axi_reset
    );
\cpt_step_s_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(19),
      Q => cpt_step_s(19),
      S => s00_axi_reset
    );
\cpt_step_s_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(1),
      Q => cpt_step_s(1),
      S => s00_axi_reset
    );
\cpt_step_s_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(20),
      Q => cpt_step_s(20),
      S => s00_axi_reset
    );
\cpt_step_s_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(21),
      Q => cpt_step_s(21),
      S => s00_axi_reset
    );
\cpt_step_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(22),
      Q => cpt_step_s(22),
      R => s00_axi_reset
    );
\cpt_step_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(23),
      Q => cpt_step_s(23),
      R => s00_axi_reset
    );
\cpt_step_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(24),
      Q => cpt_step_s(24),
      R => s00_axi_reset
    );
\cpt_step_s_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(25),
      Q => cpt_step_s(25),
      S => s00_axi_reset
    );
\cpt_step_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(26),
      Q => cpt_step_s(26),
      R => s00_axi_reset
    );
\cpt_step_s_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(27),
      Q => cpt_step_s(27),
      S => s00_axi_reset
    );
\cpt_step_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(28),
      Q => cpt_step_s(28),
      R => s00_axi_reset
    );
\cpt_step_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(29),
      Q => cpt_step_s(29),
      R => s00_axi_reset
    );
\cpt_step_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(2),
      Q => cpt_step_s(2),
      R => s00_axi_reset
    );
\cpt_step_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(30),
      Q => cpt_step_s(30),
      R => s00_axi_reset
    );
\cpt_step_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(31),
      Q => cpt_step_s(31),
      R => s00_axi_reset
    );
\cpt_step_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(3),
      Q => cpt_step_s(3),
      R => s00_axi_reset
    );
\cpt_step_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(4),
      Q => cpt_step_s(4),
      R => s00_axi_reset
    );
\cpt_step_s_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(5),
      Q => cpt_step_s(5),
      S => s00_axi_reset
    );
\cpt_step_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(6),
      Q => cpt_step_s(6),
      R => s00_axi_reset
    );
\cpt_step_s_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(7),
      Q => cpt_step_s(7),
      S => s00_axi_reset
    );
\cpt_step_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(8),
      Q => cpt_step_s(8),
      R => s00_axi_reset
    );
\cpt_step_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_wready_reg(0),
      D => s00_axi_wdata(9),
      Q => cpt_step_s(9),
      R => s00_axi_reset
    );
pinc_sw_s_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pinc_sw_s_reg_0,
      Q => \^pinc_sw_s\,
      S => s00_axi_reset
    );
poff_sw_s_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => poff_sw_s_reg_0,
      Q => \^poff_sw_s\,
      S => s00_axi_reset
    );
\readdata_s[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACF000"
    )
        port map (
      I0 => \^pinc_sw_s\,
      I1 => cpt_step_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[0]\,
      I4 => addr_s(0),
      O => p_0_in(0)
    );
\readdata_s[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(10),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[10]\,
      O => p_0_in(10)
    );
\readdata_s[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(11),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[11]\,
      O => p_0_in(11)
    );
\readdata_s[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(12),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[12]\,
      O => p_0_in(12)
    );
\readdata_s[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(13),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[13]\,
      O => p_0_in(13)
    );
\readdata_s[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(14),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[14]\,
      O => p_0_in(14)
    );
\readdata_s[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(15),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[15]\,
      O => p_0_in(15)
    );
\readdata_s[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(16),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[16]\,
      O => p_0_in(16)
    );
\readdata_s[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(17),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[17]\,
      O => p_0_in(17)
    );
\readdata_s[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(18),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[18]\,
      O => p_0_in(18)
    );
\readdata_s[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(19),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[19]\,
      O => p_0_in(19)
    );
\readdata_s[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACF000"
    )
        port map (
      I0 => \^poff_sw_s\,
      I1 => cpt_step_s(1),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[1]\,
      I4 => addr_s(0),
      O => p_0_in(1)
    );
\readdata_s[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(20),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[20]\,
      O => p_0_in(20)
    );
\readdata_s[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(21),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[21]\,
      O => p_0_in(21)
    );
\readdata_s[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(22),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[22]\,
      O => p_0_in(22)
    );
\readdata_s[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(23),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[23]\,
      O => p_0_in(23)
    );
\readdata_s[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(24),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[24]\,
      O => p_0_in(24)
    );
\readdata_s[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(25),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[25]\,
      O => p_0_in(25)
    );
\readdata_s[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(26),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[26]\,
      O => p_0_in(26)
    );
\readdata_s[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(27),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[27]\,
      O => p_0_in(27)
    );
\readdata_s[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(28),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[28]\,
      O => p_0_in(28)
    );
\readdata_s[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(29),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[29]\,
      O => p_0_in(29)
    );
\readdata_s[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(2),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[2]\,
      O => p_0_in(2)
    );
\readdata_s[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(30),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[30]\,
      O => p_0_in(30)
    );
\readdata_s[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(31),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[31]\,
      O => p_0_in(31)
    );
\readdata_s[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(3),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[3]\,
      O => p_0_in(3)
    );
\readdata_s[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(4),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[4]\,
      O => p_0_in(4)
    );
\readdata_s[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(5),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[5]\,
      O => p_0_in(5)
    );
\readdata_s[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(6),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[6]\,
      O => p_0_in(6)
    );
\readdata_s[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(7),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[7]\,
      O => p_0_in(7)
    );
\readdata_s[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(8),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[8]\,
      O => p_0_in(8)
    );
\readdata_s[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => cpt_step_s(9),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \cpt_off_s_reg_n_0_[9]\,
      O => p_0_in(9)
    );
\readdata_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(0),
      Q => s00_axi_rdata(0),
      R => s00_axi_reset
    );
\readdata_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(10),
      Q => s00_axi_rdata(10),
      R => s00_axi_reset
    );
\readdata_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(11),
      Q => s00_axi_rdata(11),
      R => s00_axi_reset
    );
\readdata_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(12),
      Q => s00_axi_rdata(12),
      R => s00_axi_reset
    );
\readdata_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(13),
      Q => s00_axi_rdata(13),
      R => s00_axi_reset
    );
\readdata_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(14),
      Q => s00_axi_rdata(14),
      R => s00_axi_reset
    );
\readdata_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(15),
      Q => s00_axi_rdata(15),
      R => s00_axi_reset
    );
\readdata_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(16),
      Q => s00_axi_rdata(16),
      R => s00_axi_reset
    );
\readdata_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(17),
      Q => s00_axi_rdata(17),
      R => s00_axi_reset
    );
\readdata_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(18),
      Q => s00_axi_rdata(18),
      R => s00_axi_reset
    );
\readdata_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(19),
      Q => s00_axi_rdata(19),
      R => s00_axi_reset
    );
\readdata_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(1),
      Q => s00_axi_rdata(1),
      R => s00_axi_reset
    );
\readdata_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(20),
      Q => s00_axi_rdata(20),
      R => s00_axi_reset
    );
\readdata_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(21),
      Q => s00_axi_rdata(21),
      R => s00_axi_reset
    );
\readdata_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(22),
      Q => s00_axi_rdata(22),
      R => s00_axi_reset
    );
\readdata_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(23),
      Q => s00_axi_rdata(23),
      R => s00_axi_reset
    );
\readdata_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(24),
      Q => s00_axi_rdata(24),
      R => s00_axi_reset
    );
\readdata_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(25),
      Q => s00_axi_rdata(25),
      R => s00_axi_reset
    );
\readdata_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(26),
      Q => s00_axi_rdata(26),
      R => s00_axi_reset
    );
\readdata_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(27),
      Q => s00_axi_rdata(27),
      R => s00_axi_reset
    );
\readdata_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(28),
      Q => s00_axi_rdata(28),
      R => s00_axi_reset
    );
\readdata_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(29),
      Q => s00_axi_rdata(29),
      R => s00_axi_reset
    );
\readdata_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(2),
      Q => s00_axi_rdata(2),
      R => s00_axi_reset
    );
\readdata_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(30),
      Q => s00_axi_rdata(30),
      R => s00_axi_reset
    );
\readdata_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(31),
      Q => s00_axi_rdata(31),
      R => s00_axi_reset
    );
\readdata_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(3),
      Q => s00_axi_rdata(3),
      R => s00_axi_reset
    );
\readdata_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(4),
      Q => s00_axi_rdata(4),
      R => s00_axi_reset
    );
\readdata_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(5),
      Q => s00_axi_rdata(5),
      R => s00_axi_reset
    );
\readdata_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(6),
      Q => s00_axi_rdata(6),
      R => s00_axi_reset
    );
\readdata_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(7),
      Q => s00_axi_rdata(7),
      R => s00_axi_reset
    );
\readdata_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(8),
      Q => s00_axi_rdata(8),
      R => s00_axi_reset
    );
\readdata_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_reg(0),
      D => p_0_in(9),
      Q => s00_axi_rdata(9),
      R => s00_axi_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_logic is
  port (
    dds_cos_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dds_sin_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    sin_fake_o : out STD_LOGIC;
    cos_fake_o : out STD_LOGIC;
    test_o : out STD_LOGIC;
    ref_clk_i : in STD_LOGIC;
    ref_rst_i : in STD_LOGIC;
    cpt_off_mux_s : in STD_LOGIC_VECTOR ( 9 downto 0 );
    cpt_step_mux_s : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_logic : entity is "nco_counter_logic";
end dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_logic;

architecture STRUCTURE of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_logic is
  signal \counter_cos_off_s_carry__0_n_0\ : STD_LOGIC;
  signal \counter_cos_off_s_carry__0_n_1\ : STD_LOGIC;
  signal \counter_cos_off_s_carry__0_n_2\ : STD_LOGIC;
  signal \counter_cos_off_s_carry__0_n_3\ : STD_LOGIC;
  signal \counter_cos_off_s_carry__1_n_3\ : STD_LOGIC;
  signal counter_cos_off_s_carry_n_0 : STD_LOGIC;
  signal counter_cos_off_s_carry_n_1 : STD_LOGIC;
  signal counter_cos_off_s_carry_n_2 : STD_LOGIC;
  signal counter_cos_off_s_carry_n_3 : STD_LOGIC;
  signal \counter_s[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_s[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_s[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_s[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter_s[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_s[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter_s[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter_s[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter_s[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter_s[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter_s[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter_s[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter_s[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter_s[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter_s[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter_s[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter_s[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter_s[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter_s[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter_s[24]_i_5_n_0\ : STD_LOGIC;
  signal \counter_s[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter_s[28]_i_3_n_0\ : STD_LOGIC;
  signal \counter_s[28]_i_4_n_0\ : STD_LOGIC;
  signal \counter_s[28]_i_5_n_0\ : STD_LOGIC;
  signal \counter_s[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_s[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter_s[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter_s[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter_s[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_s[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_s[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter_s[8]_i_5_n_0\ : STD_LOGIC;
  signal \counter_s_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_s_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_s_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_s_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_s_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_s_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_s_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_s_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_s_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_s_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_s_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_s_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_s_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_s_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_s_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_s_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_s_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_s_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_s_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_s_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_s_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_s_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_s_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_s_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_s_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_s_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_s_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_s_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_s_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_s_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_s_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_s_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_s_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_s_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_s_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_s_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_s_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_s_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_s_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_s_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_s_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_s_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_s_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_s_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_s_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_s_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_s_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_s_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_s_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_s_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_s_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_s_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_s_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_s_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_s_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_s_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_s_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_s_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_s_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_s_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_s_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_s_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_s_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[17]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[18]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[19]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[20]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[21]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_s_reg_n_0_[9]\ : STD_LOGIC;
  signal counter_scale_s : STD_LOGIC_VECTOR ( 9 to 9 );
  signal \counter_scale_s__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \counter_sin_off_s_carry__0_n_0\ : STD_LOGIC;
  signal \counter_sin_off_s_carry__0_n_1\ : STD_LOGIC;
  signal \counter_sin_off_s_carry__0_n_2\ : STD_LOGIC;
  signal \counter_sin_off_s_carry__0_n_3\ : STD_LOGIC;
  signal \counter_sin_off_s_carry__0_n_4\ : STD_LOGIC;
  signal \counter_sin_off_s_carry__0_n_5\ : STD_LOGIC;
  signal \counter_sin_off_s_carry__0_n_6\ : STD_LOGIC;
  signal \counter_sin_off_s_carry__0_n_7\ : STD_LOGIC;
  signal \counter_sin_off_s_carry__1_n_3\ : STD_LOGIC;
  signal \counter_sin_off_s_carry__1_n_6\ : STD_LOGIC;
  signal \counter_sin_off_s_carry__1_n_7\ : STD_LOGIC;
  signal counter_sin_off_s_carry_n_0 : STD_LOGIC;
  signal counter_sin_off_s_carry_n_1 : STD_LOGIC;
  signal counter_sin_off_s_carry_n_2 : STD_LOGIC;
  signal counter_sin_off_s_carry_n_3 : STD_LOGIC;
  signal counter_sin_off_s_carry_n_4 : STD_LOGIC;
  signal counter_sin_off_s_carry_n_5 : STD_LOGIC;
  signal counter_sin_off_s_carry_n_6 : STD_LOGIC;
  signal \cpt_inc2_s_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[10]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[11]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[12]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[13]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[14]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[15]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[16]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[17]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[18]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[19]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[1]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[20]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[21]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[22]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[23]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[24]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[25]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[26]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[27]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[28]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[29]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[30]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[31]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[3]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[4]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[5]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[6]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[7]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[8]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_inc2_s_reg[9]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_off2_s_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_off2_s_reg[1]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_off2_s_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_off2_s_reg[3]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_off2_s_reg[4]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_off2_s_reg[5]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_off2_s_reg[6]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_off2_s_reg[7]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_off2_s_reg[8]_srl2_n_0\ : STD_LOGIC;
  signal \cpt_off2_s_reg[9]_srl2_n_0\ : STD_LOGIC;
  signal cpt_off_s : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \in\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_i_2_n_0 : STD_LOGIC;
  signal minusOp_carry_i_3_n_0 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal \rom_10.rom_inst_n_28\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_29\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_30\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_31\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_32\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_33\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_34\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_35\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_36\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_37\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_38\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_39\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_40\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_41\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_42\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_43\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_44\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_45\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_46\ : STD_LOGIC;
  signal \rom_10.rom_inst_n_47\ : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sin_next : STD_LOGIC;
  signal test_o_INST_0_i_1_n_0 : STD_LOGIC;
  signal \NLW_counter_cos_off_s_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter_cos_off_s_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_s_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_counter_sin_off_s_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_counter_sin_off_s_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter_sin_off_s_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_minusOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_minusOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \cpt_inc2_s_reg[0]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name : string;
  attribute srl_name of \cpt_inc2_s_reg[0]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[0]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[10]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[10]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[10]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[11]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[11]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[11]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[12]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[12]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[12]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[13]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[13]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[13]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[14]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[14]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[14]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[15]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[15]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[15]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[16]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[16]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[16]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[17]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[17]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[17]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[18]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[18]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[18]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[19]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[19]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[19]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[1]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[1]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[1]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[20]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[20]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[20]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[21]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[21]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[21]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[22]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[22]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[22]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[23]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[23]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[23]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[24]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[24]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[24]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[25]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[25]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[25]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[26]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[26]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[26]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[27]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[27]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[27]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[28]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[28]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[28]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[29]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[29]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[29]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[2]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[2]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[2]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[30]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[30]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[30]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[31]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[31]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[31]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[3]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[3]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[3]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[4]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[4]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[4]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[5]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[5]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[5]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[6]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[6]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[6]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[7]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[7]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[7]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[8]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[8]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[8]_srl2 ";
  attribute srl_bus_name of \cpt_inc2_s_reg[9]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg ";
  attribute srl_name of \cpt_inc2_s_reg[9]_srl2\ : label is "U0/\nco_inst1/cpt_inc2_s_reg[9]_srl2 ";
  attribute srl_bus_name of \cpt_off2_s_reg[0]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg ";
  attribute srl_name of \cpt_off2_s_reg[0]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg[0]_srl2 ";
  attribute srl_bus_name of \cpt_off2_s_reg[1]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg ";
  attribute srl_name of \cpt_off2_s_reg[1]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg[1]_srl2 ";
  attribute srl_bus_name of \cpt_off2_s_reg[2]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg ";
  attribute srl_name of \cpt_off2_s_reg[2]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg[2]_srl2 ";
  attribute srl_bus_name of \cpt_off2_s_reg[3]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg ";
  attribute srl_name of \cpt_off2_s_reg[3]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg[3]_srl2 ";
  attribute srl_bus_name of \cpt_off2_s_reg[4]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg ";
  attribute srl_name of \cpt_off2_s_reg[4]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg[4]_srl2 ";
  attribute srl_bus_name of \cpt_off2_s_reg[5]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg ";
  attribute srl_name of \cpt_off2_s_reg[5]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg[5]_srl2 ";
  attribute srl_bus_name of \cpt_off2_s_reg[6]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg ";
  attribute srl_name of \cpt_off2_s_reg[6]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg[6]_srl2 ";
  attribute srl_bus_name of \cpt_off2_s_reg[7]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg ";
  attribute srl_name of \cpt_off2_s_reg[7]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg[7]_srl2 ";
  attribute srl_bus_name of \cpt_off2_s_reg[8]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg ";
  attribute srl_name of \cpt_off2_s_reg[8]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg[8]_srl2 ";
  attribute srl_bus_name of \cpt_off2_s_reg[9]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg ";
  attribute srl_name of \cpt_off2_s_reg[9]_srl2\ : label is "U0/\nco_inst1/cpt_off2_s_reg[9]_srl2 ";
begin
cos_fake_o_reg: unisim.vcomponents.FDSE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => counter_scale_s(9),
      Q => cos_fake_o,
      S => ref_rst_i
    );
counter_cos_off_s_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_cos_off_s_carry_n_0,
      CO(2) => counter_cos_off_s_carry_n_1,
      CO(1) => counter_cos_off_s_carry_n_2,
      CO(0) => counter_cos_off_s_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \counter_scale_s__0\(3 downto 0),
      O(3 downto 0) => sel(3 downto 0),
      S(3) => \rom_10.rom_inst_n_44\,
      S(2) => \rom_10.rom_inst_n_45\,
      S(1) => \rom_10.rom_inst_n_46\,
      S(0) => \rom_10.rom_inst_n_47\
    );
\counter_cos_off_s_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_cos_off_s_carry_n_0,
      CO(3) => \counter_cos_off_s_carry__0_n_0\,
      CO(2) => \counter_cos_off_s_carry__0_n_1\,
      CO(1) => \counter_cos_off_s_carry__0_n_2\,
      CO(0) => \counter_cos_off_s_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \counter_scale_s__0\(7 downto 4),
      O(3 downto 0) => sel(7 downto 4),
      S(3) => \rom_10.rom_inst_n_32\,
      S(2) => \rom_10.rom_inst_n_33\,
      S(1) => \rom_10.rom_inst_n_34\,
      S(0) => \rom_10.rom_inst_n_35\
    );
\counter_cos_off_s_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_cos_off_s_carry__0_n_0\,
      CO(3 downto 1) => \NLW_counter_cos_off_s_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \counter_cos_off_s_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter_scale_s__0\(8),
      O(3 downto 2) => \NLW_counter_cos_off_s_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => sel(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \rom_10.rom_inst_n_28\,
      S(0) => \rom_10.rom_inst_n_29\
    );
\counter_s[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(3),
      I1 => \counter_s_reg_n_0_[3]\,
      O => \counter_s[0]_i_2_n_0\
    );
\counter_s[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(2),
      I1 => \counter_s_reg_n_0_[2]\,
      O => \counter_s[0]_i_3_n_0\
    );
\counter_s[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(1),
      I1 => \counter_s_reg_n_0_[1]\,
      O => \counter_s[0]_i_4_n_0\
    );
\counter_s[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(0),
      I1 => \counter_s_reg_n_0_[0]\,
      O => \counter_s[0]_i_5_n_0\
    );
\counter_s[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(15),
      I1 => \counter_s_reg_n_0_[15]\,
      O => \counter_s[12]_i_2_n_0\
    );
\counter_s[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(14),
      I1 => \counter_s_reg_n_0_[14]\,
      O => \counter_s[12]_i_3_n_0\
    );
\counter_s[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(13),
      I1 => \counter_s_reg_n_0_[13]\,
      O => \counter_s[12]_i_4_n_0\
    );
\counter_s[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(12),
      I1 => \counter_s_reg_n_0_[12]\,
      O => \counter_s[12]_i_5_n_0\
    );
\counter_s[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(19),
      I1 => \counter_s_reg_n_0_[19]\,
      O => \counter_s[16]_i_2_n_0\
    );
\counter_s[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(18),
      I1 => \counter_s_reg_n_0_[18]\,
      O => \counter_s[16]_i_3_n_0\
    );
\counter_s[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(17),
      I1 => \counter_s_reg_n_0_[17]\,
      O => \counter_s[16]_i_4_n_0\
    );
\counter_s[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(16),
      I1 => \counter_s_reg_n_0_[16]\,
      O => \counter_s[16]_i_5_n_0\
    );
\counter_s[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(23),
      I1 => \counter_scale_s__0\(1),
      O => \counter_s[20]_i_2_n_0\
    );
\counter_s[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(22),
      I1 => \counter_scale_s__0\(0),
      O => \counter_s[20]_i_3_n_0\
    );
\counter_s[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(21),
      I1 => \counter_s_reg_n_0_[21]\,
      O => \counter_s[20]_i_4_n_0\
    );
\counter_s[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(20),
      I1 => \counter_s_reg_n_0_[20]\,
      O => \counter_s[20]_i_5_n_0\
    );
\counter_s[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(27),
      I1 => \counter_scale_s__0\(5),
      O => \counter_s[24]_i_2_n_0\
    );
\counter_s[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(26),
      I1 => \counter_scale_s__0\(4),
      O => \counter_s[24]_i_3_n_0\
    );
\counter_s[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(25),
      I1 => \counter_scale_s__0\(3),
      O => \counter_s[24]_i_4_n_0\
    );
\counter_s[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(24),
      I1 => \counter_scale_s__0\(2),
      O => \counter_s[24]_i_5_n_0\
    );
\counter_s[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(31),
      I1 => counter_scale_s(9),
      O => \counter_s[28]_i_2_n_0\
    );
\counter_s[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(30),
      I1 => \counter_scale_s__0\(8),
      O => \counter_s[28]_i_3_n_0\
    );
\counter_s[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(29),
      I1 => \counter_scale_s__0\(7),
      O => \counter_s[28]_i_4_n_0\
    );
\counter_s[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(28),
      I1 => \counter_scale_s__0\(6),
      O => \counter_s[28]_i_5_n_0\
    );
\counter_s[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(7),
      I1 => \counter_s_reg_n_0_[7]\,
      O => \counter_s[4]_i_2_n_0\
    );
\counter_s[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(6),
      I1 => \counter_s_reg_n_0_[6]\,
      O => \counter_s[4]_i_3_n_0\
    );
\counter_s[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(5),
      I1 => \counter_s_reg_n_0_[5]\,
      O => \counter_s[4]_i_4_n_0\
    );
\counter_s[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(4),
      I1 => \counter_s_reg_n_0_[4]\,
      O => \counter_s[4]_i_5_n_0\
    );
\counter_s[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(11),
      I1 => \counter_s_reg_n_0_[11]\,
      O => \counter_s[8]_i_2_n_0\
    );
\counter_s[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(10),
      I1 => \counter_s_reg_n_0_[10]\,
      O => \counter_s[8]_i_3_n_0\
    );
\counter_s[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(9),
      I1 => \counter_s_reg_n_0_[9]\,
      O => \counter_s[8]_i_4_n_0\
    );
\counter_s[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(8),
      I1 => \counter_s_reg_n_0_[8]\,
      O => \counter_s[8]_i_5_n_0\
    );
\counter_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[0]_i_1_n_7\,
      Q => \counter_s_reg_n_0_[0]\,
      R => ref_rst_i
    );
\counter_s_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_s_reg[0]_i_1_n_0\,
      CO(2) => \counter_s_reg[0]_i_1_n_1\,
      CO(1) => \counter_s_reg[0]_i_1_n_2\,
      CO(0) => \counter_s_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(3 downto 0),
      O(3) => \counter_s_reg[0]_i_1_n_4\,
      O(2) => \counter_s_reg[0]_i_1_n_5\,
      O(1) => \counter_s_reg[0]_i_1_n_6\,
      O(0) => \counter_s_reg[0]_i_1_n_7\,
      S(3) => \counter_s[0]_i_2_n_0\,
      S(2) => \counter_s[0]_i_3_n_0\,
      S(1) => \counter_s[0]_i_4_n_0\,
      S(0) => \counter_s[0]_i_5_n_0\
    );
\counter_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[8]_i_1_n_5\,
      Q => \counter_s_reg_n_0_[10]\,
      R => ref_rst_i
    );
\counter_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[8]_i_1_n_4\,
      Q => \counter_s_reg_n_0_[11]\,
      R => ref_rst_i
    );
\counter_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[12]_i_1_n_7\,
      Q => \counter_s_reg_n_0_[12]\,
      R => ref_rst_i
    );
\counter_s_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_s_reg[8]_i_1_n_0\,
      CO(3) => \counter_s_reg[12]_i_1_n_0\,
      CO(2) => \counter_s_reg[12]_i_1_n_1\,
      CO(1) => \counter_s_reg[12]_i_1_n_2\,
      CO(0) => \counter_s_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(15 downto 12),
      O(3) => \counter_s_reg[12]_i_1_n_4\,
      O(2) => \counter_s_reg[12]_i_1_n_5\,
      O(1) => \counter_s_reg[12]_i_1_n_6\,
      O(0) => \counter_s_reg[12]_i_1_n_7\,
      S(3) => \counter_s[12]_i_2_n_0\,
      S(2) => \counter_s[12]_i_3_n_0\,
      S(1) => \counter_s[12]_i_4_n_0\,
      S(0) => \counter_s[12]_i_5_n_0\
    );
\counter_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[12]_i_1_n_6\,
      Q => \counter_s_reg_n_0_[13]\,
      R => ref_rst_i
    );
\counter_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[12]_i_1_n_5\,
      Q => \counter_s_reg_n_0_[14]\,
      R => ref_rst_i
    );
\counter_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[12]_i_1_n_4\,
      Q => \counter_s_reg_n_0_[15]\,
      R => ref_rst_i
    );
\counter_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[16]_i_1_n_7\,
      Q => \counter_s_reg_n_0_[16]\,
      R => ref_rst_i
    );
\counter_s_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_s_reg[12]_i_1_n_0\,
      CO(3) => \counter_s_reg[16]_i_1_n_0\,
      CO(2) => \counter_s_reg[16]_i_1_n_1\,
      CO(1) => \counter_s_reg[16]_i_1_n_2\,
      CO(0) => \counter_s_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(19 downto 16),
      O(3) => \counter_s_reg[16]_i_1_n_4\,
      O(2) => \counter_s_reg[16]_i_1_n_5\,
      O(1) => \counter_s_reg[16]_i_1_n_6\,
      O(0) => \counter_s_reg[16]_i_1_n_7\,
      S(3) => \counter_s[16]_i_2_n_0\,
      S(2) => \counter_s[16]_i_3_n_0\,
      S(1) => \counter_s[16]_i_4_n_0\,
      S(0) => \counter_s[16]_i_5_n_0\
    );
\counter_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[16]_i_1_n_6\,
      Q => \counter_s_reg_n_0_[17]\,
      R => ref_rst_i
    );
\counter_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[16]_i_1_n_5\,
      Q => \counter_s_reg_n_0_[18]\,
      R => ref_rst_i
    );
\counter_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[16]_i_1_n_4\,
      Q => \counter_s_reg_n_0_[19]\,
      R => ref_rst_i
    );
\counter_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[0]_i_1_n_6\,
      Q => \counter_s_reg_n_0_[1]\,
      R => ref_rst_i
    );
\counter_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[20]_i_1_n_7\,
      Q => \counter_s_reg_n_0_[20]\,
      R => ref_rst_i
    );
\counter_s_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_s_reg[16]_i_1_n_0\,
      CO(3) => \counter_s_reg[20]_i_1_n_0\,
      CO(2) => \counter_s_reg[20]_i_1_n_1\,
      CO(1) => \counter_s_reg[20]_i_1_n_2\,
      CO(0) => \counter_s_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(23 downto 20),
      O(3) => \counter_s_reg[20]_i_1_n_4\,
      O(2) => \counter_s_reg[20]_i_1_n_5\,
      O(1) => \counter_s_reg[20]_i_1_n_6\,
      O(0) => \counter_s_reg[20]_i_1_n_7\,
      S(3) => \counter_s[20]_i_2_n_0\,
      S(2) => \counter_s[20]_i_3_n_0\,
      S(1) => \counter_s[20]_i_4_n_0\,
      S(0) => \counter_s[20]_i_5_n_0\
    );
\counter_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[20]_i_1_n_6\,
      Q => \counter_s_reg_n_0_[21]\,
      R => ref_rst_i
    );
\counter_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[20]_i_1_n_5\,
      Q => \counter_scale_s__0\(0),
      R => ref_rst_i
    );
\counter_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[20]_i_1_n_4\,
      Q => \counter_scale_s__0\(1),
      R => ref_rst_i
    );
\counter_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[24]_i_1_n_7\,
      Q => \counter_scale_s__0\(2),
      R => ref_rst_i
    );
\counter_s_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_s_reg[20]_i_1_n_0\,
      CO(3) => \counter_s_reg[24]_i_1_n_0\,
      CO(2) => \counter_s_reg[24]_i_1_n_1\,
      CO(1) => \counter_s_reg[24]_i_1_n_2\,
      CO(0) => \counter_s_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(27 downto 24),
      O(3) => \counter_s_reg[24]_i_1_n_4\,
      O(2) => \counter_s_reg[24]_i_1_n_5\,
      O(1) => \counter_s_reg[24]_i_1_n_6\,
      O(0) => \counter_s_reg[24]_i_1_n_7\,
      S(3) => \counter_s[24]_i_2_n_0\,
      S(2) => \counter_s[24]_i_3_n_0\,
      S(1) => \counter_s[24]_i_4_n_0\,
      S(0) => \counter_s[24]_i_5_n_0\
    );
\counter_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[24]_i_1_n_6\,
      Q => \counter_scale_s__0\(3),
      R => ref_rst_i
    );
\counter_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[24]_i_1_n_5\,
      Q => \counter_scale_s__0\(4),
      R => ref_rst_i
    );
\counter_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[24]_i_1_n_4\,
      Q => \counter_scale_s__0\(5),
      R => ref_rst_i
    );
\counter_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[28]_i_1_n_7\,
      Q => \counter_scale_s__0\(6),
      R => ref_rst_i
    );
\counter_s_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_s_reg[24]_i_1_n_0\,
      CO(3) => \NLW_counter_s_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_s_reg[28]_i_1_n_1\,
      CO(1) => \counter_s_reg[28]_i_1_n_2\,
      CO(0) => \counter_s_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \in\(30 downto 28),
      O(3) => \counter_s_reg[28]_i_1_n_4\,
      O(2) => \counter_s_reg[28]_i_1_n_5\,
      O(1) => \counter_s_reg[28]_i_1_n_6\,
      O(0) => \counter_s_reg[28]_i_1_n_7\,
      S(3) => \counter_s[28]_i_2_n_0\,
      S(2) => \counter_s[28]_i_3_n_0\,
      S(1) => \counter_s[28]_i_4_n_0\,
      S(0) => \counter_s[28]_i_5_n_0\
    );
\counter_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[28]_i_1_n_6\,
      Q => \counter_scale_s__0\(7),
      R => ref_rst_i
    );
\counter_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[0]_i_1_n_5\,
      Q => \counter_s_reg_n_0_[2]\,
      R => ref_rst_i
    );
\counter_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[28]_i_1_n_5\,
      Q => \counter_scale_s__0\(8),
      R => ref_rst_i
    );
\counter_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[28]_i_1_n_4\,
      Q => counter_scale_s(9),
      R => ref_rst_i
    );
\counter_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[0]_i_1_n_4\,
      Q => \counter_s_reg_n_0_[3]\,
      R => ref_rst_i
    );
\counter_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[4]_i_1_n_7\,
      Q => \counter_s_reg_n_0_[4]\,
      R => ref_rst_i
    );
\counter_s_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_s_reg[0]_i_1_n_0\,
      CO(3) => \counter_s_reg[4]_i_1_n_0\,
      CO(2) => \counter_s_reg[4]_i_1_n_1\,
      CO(1) => \counter_s_reg[4]_i_1_n_2\,
      CO(0) => \counter_s_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(7 downto 4),
      O(3) => \counter_s_reg[4]_i_1_n_4\,
      O(2) => \counter_s_reg[4]_i_1_n_5\,
      O(1) => \counter_s_reg[4]_i_1_n_6\,
      O(0) => \counter_s_reg[4]_i_1_n_7\,
      S(3) => \counter_s[4]_i_2_n_0\,
      S(2) => \counter_s[4]_i_3_n_0\,
      S(1) => \counter_s[4]_i_4_n_0\,
      S(0) => \counter_s[4]_i_5_n_0\
    );
\counter_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[4]_i_1_n_6\,
      Q => \counter_s_reg_n_0_[5]\,
      R => ref_rst_i
    );
\counter_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[4]_i_1_n_5\,
      Q => \counter_s_reg_n_0_[6]\,
      R => ref_rst_i
    );
\counter_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[4]_i_1_n_4\,
      Q => \counter_s_reg_n_0_[7]\,
      R => ref_rst_i
    );
\counter_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[8]_i_1_n_7\,
      Q => \counter_s_reg_n_0_[8]\,
      R => ref_rst_i
    );
\counter_s_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_s_reg[4]_i_1_n_0\,
      CO(3) => \counter_s_reg[8]_i_1_n_0\,
      CO(2) => \counter_s_reg[8]_i_1_n_1\,
      CO(1) => \counter_s_reg[8]_i_1_n_2\,
      CO(0) => \counter_s_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(11 downto 8),
      O(3) => \counter_s_reg[8]_i_1_n_4\,
      O(2) => \counter_s_reg[8]_i_1_n_5\,
      O(1) => \counter_s_reg[8]_i_1_n_6\,
      O(0) => \counter_s_reg[8]_i_1_n_7\,
      S(3) => \counter_s[8]_i_2_n_0\,
      S(2) => \counter_s[8]_i_3_n_0\,
      S(1) => \counter_s[8]_i_4_n_0\,
      S(0) => \counter_s[8]_i_5_n_0\
    );
\counter_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \counter_s_reg[8]_i_1_n_6\,
      Q => \counter_s_reg_n_0_[9]\,
      R => ref_rst_i
    );
counter_sin_off_s_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_sin_off_s_carry_n_0,
      CO(2) => counter_sin_off_s_carry_n_1,
      CO(1) => counter_sin_off_s_carry_n_2,
      CO(0) => counter_sin_off_s_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \counter_scale_s__0\(3 downto 0),
      O(3) => counter_sin_off_s_carry_n_4,
      O(2) => counter_sin_off_s_carry_n_5,
      O(1) => counter_sin_off_s_carry_n_6,
      O(0) => NLW_counter_sin_off_s_carry_O_UNCONNECTED(0),
      S(3) => \rom_10.rom_inst_n_40\,
      S(2) => \rom_10.rom_inst_n_41\,
      S(1) => \rom_10.rom_inst_n_42\,
      S(0) => \rom_10.rom_inst_n_43\
    );
\counter_sin_off_s_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_sin_off_s_carry_n_0,
      CO(3) => \counter_sin_off_s_carry__0_n_0\,
      CO(2) => \counter_sin_off_s_carry__0_n_1\,
      CO(1) => \counter_sin_off_s_carry__0_n_2\,
      CO(0) => \counter_sin_off_s_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => minusOp_carry_n_7,
      DI(2 downto 0) => \counter_scale_s__0\(6 downto 4),
      O(3) => \counter_sin_off_s_carry__0_n_4\,
      O(2) => \counter_sin_off_s_carry__0_n_5\,
      O(1) => \counter_sin_off_s_carry__0_n_6\,
      O(0) => \counter_sin_off_s_carry__0_n_7\,
      S(3) => \rom_10.rom_inst_n_36\,
      S(2) => \rom_10.rom_inst_n_37\,
      S(1) => \rom_10.rom_inst_n_38\,
      S(0) => \rom_10.rom_inst_n_39\
    );
\counter_sin_off_s_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_sin_off_s_carry__0_n_0\,
      CO(3 downto 1) => \NLW_counter_sin_off_s_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \counter_sin_off_s_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => minusOp_carry_n_6,
      O(3 downto 2) => \NLW_counter_sin_off_s_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \counter_sin_off_s_carry__1_n_6\,
      O(0) => \counter_sin_off_s_carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \rom_10.rom_inst_n_30\,
      S(0) => \rom_10.rom_inst_n_31\
    );
\cpt_inc2_s_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(0),
      Q => \cpt_inc2_s_reg[0]_srl2_n_0\
    );
\cpt_inc2_s_reg[10]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(10),
      Q => \cpt_inc2_s_reg[10]_srl2_n_0\
    );
\cpt_inc2_s_reg[11]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(11),
      Q => \cpt_inc2_s_reg[11]_srl2_n_0\
    );
\cpt_inc2_s_reg[12]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(12),
      Q => \cpt_inc2_s_reg[12]_srl2_n_0\
    );
\cpt_inc2_s_reg[13]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(13),
      Q => \cpt_inc2_s_reg[13]_srl2_n_0\
    );
\cpt_inc2_s_reg[14]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(14),
      Q => \cpt_inc2_s_reg[14]_srl2_n_0\
    );
\cpt_inc2_s_reg[15]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(15),
      Q => \cpt_inc2_s_reg[15]_srl2_n_0\
    );
\cpt_inc2_s_reg[16]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(16),
      Q => \cpt_inc2_s_reg[16]_srl2_n_0\
    );
\cpt_inc2_s_reg[17]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(17),
      Q => \cpt_inc2_s_reg[17]_srl2_n_0\
    );
\cpt_inc2_s_reg[18]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(18),
      Q => \cpt_inc2_s_reg[18]_srl2_n_0\
    );
\cpt_inc2_s_reg[19]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(19),
      Q => \cpt_inc2_s_reg[19]_srl2_n_0\
    );
\cpt_inc2_s_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(1),
      Q => \cpt_inc2_s_reg[1]_srl2_n_0\
    );
\cpt_inc2_s_reg[20]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(20),
      Q => \cpt_inc2_s_reg[20]_srl2_n_0\
    );
\cpt_inc2_s_reg[21]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(21),
      Q => \cpt_inc2_s_reg[21]_srl2_n_0\
    );
\cpt_inc2_s_reg[22]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(22),
      Q => \cpt_inc2_s_reg[22]_srl2_n_0\
    );
\cpt_inc2_s_reg[23]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(23),
      Q => \cpt_inc2_s_reg[23]_srl2_n_0\
    );
\cpt_inc2_s_reg[24]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(24),
      Q => \cpt_inc2_s_reg[24]_srl2_n_0\
    );
\cpt_inc2_s_reg[25]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(25),
      Q => \cpt_inc2_s_reg[25]_srl2_n_0\
    );
\cpt_inc2_s_reg[26]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(26),
      Q => \cpt_inc2_s_reg[26]_srl2_n_0\
    );
\cpt_inc2_s_reg[27]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(27),
      Q => \cpt_inc2_s_reg[27]_srl2_n_0\
    );
\cpt_inc2_s_reg[28]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(28),
      Q => \cpt_inc2_s_reg[28]_srl2_n_0\
    );
\cpt_inc2_s_reg[29]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(29),
      Q => \cpt_inc2_s_reg[29]_srl2_n_0\
    );
\cpt_inc2_s_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(2),
      Q => \cpt_inc2_s_reg[2]_srl2_n_0\
    );
\cpt_inc2_s_reg[30]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(30),
      Q => \cpt_inc2_s_reg[30]_srl2_n_0\
    );
\cpt_inc2_s_reg[31]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(31),
      Q => \cpt_inc2_s_reg[31]_srl2_n_0\
    );
\cpt_inc2_s_reg[3]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(3),
      Q => \cpt_inc2_s_reg[3]_srl2_n_0\
    );
\cpt_inc2_s_reg[4]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(4),
      Q => \cpt_inc2_s_reg[4]_srl2_n_0\
    );
\cpt_inc2_s_reg[5]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(5),
      Q => \cpt_inc2_s_reg[5]_srl2_n_0\
    );
\cpt_inc2_s_reg[6]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(6),
      Q => \cpt_inc2_s_reg[6]_srl2_n_0\
    );
\cpt_inc2_s_reg[7]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(7),
      Q => \cpt_inc2_s_reg[7]_srl2_n_0\
    );
\cpt_inc2_s_reg[8]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(8),
      Q => \cpt_inc2_s_reg[8]_srl2_n_0\
    );
\cpt_inc2_s_reg[9]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_step_mux_s(9),
      Q => \cpt_inc2_s_reg[9]_srl2_n_0\
    );
\cpt_inc_s_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[0]_srl2_n_0\,
      Q => \in\(0),
      R => '0'
    );
\cpt_inc_s_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[10]_srl2_n_0\,
      Q => \in\(10),
      R => '0'
    );
\cpt_inc_s_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[11]_srl2_n_0\,
      Q => \in\(11),
      R => '0'
    );
\cpt_inc_s_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[12]_srl2_n_0\,
      Q => \in\(12),
      R => '0'
    );
\cpt_inc_s_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[13]_srl2_n_0\,
      Q => \in\(13),
      R => '0'
    );
\cpt_inc_s_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[14]_srl2_n_0\,
      Q => \in\(14),
      R => '0'
    );
\cpt_inc_s_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[15]_srl2_n_0\,
      Q => \in\(15),
      R => '0'
    );
\cpt_inc_s_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[16]_srl2_n_0\,
      Q => \in\(16),
      R => '0'
    );
\cpt_inc_s_reg[17]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[17]_srl2_n_0\,
      Q => \in\(17),
      R => '0'
    );
\cpt_inc_s_reg[18]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[18]_srl2_n_0\,
      Q => \in\(18),
      R => '0'
    );
\cpt_inc_s_reg[19]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[19]_srl2_n_0\,
      Q => \in\(19),
      R => '0'
    );
\cpt_inc_s_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[1]_srl2_n_0\,
      Q => \in\(1),
      R => '0'
    );
\cpt_inc_s_reg[20]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[20]_srl2_n_0\,
      Q => \in\(20),
      R => '0'
    );
\cpt_inc_s_reg[21]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[21]_srl2_n_0\,
      Q => \in\(21),
      R => '0'
    );
\cpt_inc_s_reg[22]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[22]_srl2_n_0\,
      Q => \in\(22),
      R => '0'
    );
\cpt_inc_s_reg[23]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[23]_srl2_n_0\,
      Q => \in\(23),
      R => '0'
    );
\cpt_inc_s_reg[24]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[24]_srl2_n_0\,
      Q => \in\(24),
      R => '0'
    );
\cpt_inc_s_reg[25]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[25]_srl2_n_0\,
      Q => \in\(25),
      R => '0'
    );
\cpt_inc_s_reg[26]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[26]_srl2_n_0\,
      Q => \in\(26),
      R => '0'
    );
\cpt_inc_s_reg[27]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[27]_srl2_n_0\,
      Q => \in\(27),
      R => '0'
    );
\cpt_inc_s_reg[28]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[28]_srl2_n_0\,
      Q => \in\(28),
      R => '0'
    );
\cpt_inc_s_reg[29]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[29]_srl2_n_0\,
      Q => \in\(29),
      R => '0'
    );
\cpt_inc_s_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[2]_srl2_n_0\,
      Q => \in\(2),
      R => '0'
    );
\cpt_inc_s_reg[30]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[30]_srl2_n_0\,
      Q => \in\(30),
      R => '0'
    );
\cpt_inc_s_reg[31]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[31]_srl2_n_0\,
      Q => \in\(31),
      R => '0'
    );
\cpt_inc_s_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[3]_srl2_n_0\,
      Q => \in\(3),
      R => '0'
    );
\cpt_inc_s_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[4]_srl2_n_0\,
      Q => \in\(4),
      R => '0'
    );
\cpt_inc_s_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[5]_srl2_n_0\,
      Q => \in\(5),
      R => '0'
    );
\cpt_inc_s_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[6]_srl2_n_0\,
      Q => \in\(6),
      R => '0'
    );
\cpt_inc_s_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[7]_srl2_n_0\,
      Q => \in\(7),
      R => '0'
    );
\cpt_inc_s_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[8]_srl2_n_0\,
      Q => \in\(8),
      R => '0'
    );
\cpt_inc_s_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_inc2_s_reg[9]_srl2_n_0\,
      Q => \in\(9),
      R => '0'
    );
\cpt_off2_s_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_off_mux_s(0),
      Q => \cpt_off2_s_reg[0]_srl2_n_0\
    );
\cpt_off2_s_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_off_mux_s(1),
      Q => \cpt_off2_s_reg[1]_srl2_n_0\
    );
\cpt_off2_s_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_off_mux_s(2),
      Q => \cpt_off2_s_reg[2]_srl2_n_0\
    );
\cpt_off2_s_reg[3]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_off_mux_s(3),
      Q => \cpt_off2_s_reg[3]_srl2_n_0\
    );
\cpt_off2_s_reg[4]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_off_mux_s(4),
      Q => \cpt_off2_s_reg[4]_srl2_n_0\
    );
\cpt_off2_s_reg[5]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_off_mux_s(5),
      Q => \cpt_off2_s_reg[5]_srl2_n_0\
    );
\cpt_off2_s_reg[6]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_off_mux_s(6),
      Q => \cpt_off2_s_reg[6]_srl2_n_0\
    );
\cpt_off2_s_reg[7]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_off_mux_s(7),
      Q => \cpt_off2_s_reg[7]_srl2_n_0\
    );
\cpt_off2_s_reg[8]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_off_mux_s(8),
      Q => \cpt_off2_s_reg[8]_srl2_n_0\
    );
\cpt_off2_s_reg[9]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ref_clk_i,
      D => cpt_off_mux_s(9),
      Q => \cpt_off2_s_reg[9]_srl2_n_0\
    );
\cpt_off_s_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_off2_s_reg[0]_srl2_n_0\,
      Q => cpt_off_s(0),
      R => '0'
    );
\cpt_off_s_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_off2_s_reg[1]_srl2_n_0\,
      Q => cpt_off_s(1),
      R => '0'
    );
\cpt_off_s_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_off2_s_reg[2]_srl2_n_0\,
      Q => cpt_off_s(2),
      R => '0'
    );
\cpt_off_s_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_off2_s_reg[3]_srl2_n_0\,
      Q => cpt_off_s(3),
      R => '0'
    );
\cpt_off_s_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_off2_s_reg[4]_srl2_n_0\,
      Q => cpt_off_s(4),
      R => '0'
    );
\cpt_off_s_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_off2_s_reg[5]_srl2_n_0\,
      Q => cpt_off_s(5),
      R => '0'
    );
\cpt_off_s_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_off2_s_reg[6]_srl2_n_0\,
      Q => cpt_off_s(6),
      R => '0'
    );
\cpt_off_s_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_off2_s_reg[7]_srl2_n_0\,
      Q => cpt_off_s(7),
      R => '0'
    );
\cpt_off_s_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_off2_s_reg[8]_srl2_n_0\,
      Q => cpt_off_s(8),
      R => '0'
    );
\cpt_off_s_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_off2_s_reg[9]_srl2_n_0\,
      Q => cpt_off_s(9),
      R => '0'
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_minusOp_carry_CO_UNCONNECTED(3 downto 2),
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \counter_scale_s__0\(8),
      DI(0) => '0',
      O(3) => NLW_minusOp_carry_O_UNCONNECTED(3),
      O(2) => sin_next,
      O(1) => minusOp_carry_n_6,
      O(0) => minusOp_carry_n_7,
      S(3) => '0',
      S(2) => minusOp_carry_i_1_n_0,
      S(1) => minusOp_carry_i_2_n_0,
      S(0) => minusOp_carry_i_3_n_0
    );
minusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_scale_s(9),
      O => minusOp_carry_i_1_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_scale_s__0\(8),
      O => minusOp_carry_i_2_n_0
    );
minusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_scale_s__0\(7),
      O => minusOp_carry_i_3_n_0
    );
\rom_10.rom_inst\: entity work.dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_cos_rom
     port map (
      ADDRARDADDR(9 downto 0) => sel(9 downto 0),
      ADDRBWRADDR(8) => \counter_sin_off_s_carry__1_n_6\,
      ADDRBWRADDR(7) => \counter_sin_off_s_carry__1_n_7\,
      ADDRBWRADDR(6) => \counter_sin_off_s_carry__0_n_4\,
      ADDRBWRADDR(5) => \counter_sin_off_s_carry__0_n_5\,
      ADDRBWRADDR(4) => \counter_sin_off_s_carry__0_n_6\,
      ADDRBWRADDR(3) => \counter_sin_off_s_carry__0_n_7\,
      ADDRBWRADDR(2) => counter_sin_off_s_carry_n_4,
      ADDRBWRADDR(1) => counter_sin_off_s_carry_n_5,
      ADDRBWRADDR(0) => counter_sin_off_s_carry_n_6,
      O(2) => sin_next,
      O(1) => minusOp_carry_n_6,
      O(0) => minusOp_carry_n_7,
      S(1) => \rom_10.rom_inst_n_28\,
      S(0) => \rom_10.rom_inst_n_29\,
      counter_scale_s(0) => counter_scale_s(9),
      \counter_scale_s__0\(8 downto 0) => \counter_scale_s__0\(8 downto 0),
      cpt_off_s(9 downto 0) => cpt_off_s(9 downto 0),
      data_a_reg_0(1) => \rom_10.rom_inst_n_30\,
      data_a_reg_0(0) => \rom_10.rom_inst_n_31\,
      data_a_reg_1(3) => \rom_10.rom_inst_n_32\,
      data_a_reg_1(2) => \rom_10.rom_inst_n_33\,
      data_a_reg_1(1) => \rom_10.rom_inst_n_34\,
      data_a_reg_1(0) => \rom_10.rom_inst_n_35\,
      data_a_reg_2(3) => \rom_10.rom_inst_n_36\,
      data_a_reg_2(2) => \rom_10.rom_inst_n_37\,
      data_a_reg_2(1) => \rom_10.rom_inst_n_38\,
      data_a_reg_2(0) => \rom_10.rom_inst_n_39\,
      data_a_reg_3(3) => \rom_10.rom_inst_n_40\,
      data_a_reg_3(2) => \rom_10.rom_inst_n_41\,
      data_a_reg_3(1) => \rom_10.rom_inst_n_42\,
      data_a_reg_3(0) => \rom_10.rom_inst_n_43\,
      data_a_reg_4(3) => \rom_10.rom_inst_n_44\,
      data_a_reg_4(2) => \rom_10.rom_inst_n_45\,
      data_a_reg_4(1) => \rom_10.rom_inst_n_46\,
      data_a_reg_4(0) => \rom_10.rom_inst_n_47\,
      dds_cos_o(13 downto 0) => dds_cos_o(13 downto 0),
      dds_sin_o(13 downto 0) => dds_sin_o(13 downto 0),
      ref_clk_i => ref_clk_i
    );
sin_fake_o_reg: unisim.vcomponents.FDSE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => sin_next,
      Q => sin_fake_o,
      S => ref_rst_i
    );
test_o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => test_o_INST_0_i_1_n_0,
      I1 => \counter_scale_s__0\(6),
      I2 => \counter_scale_s__0\(7),
      I3 => \counter_scale_s__0\(4),
      I4 => \counter_scale_s__0\(5),
      O => test_o
    );
test_o_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000001F"
    )
        port map (
      I0 => \counter_scale_s__0\(2),
      I1 => \counter_scale_s__0\(1),
      I2 => \counter_scale_s__0\(3),
      I3 => \counter_scale_s__0\(8),
      I4 => counter_scale_s(9),
      O => test_o_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_gnuradio_wrapper_nco_counter_0_0_nco_counter is
  port (
    ref_clk_i : in STD_LOGIC;
    ref_rst_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    pinc_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pinc_en_i : in STD_LOGIC;
    pinc_rst_i : in STD_LOGIC;
    pinc_clk_i : in STD_LOGIC;
    poff_i : in STD_LOGIC_VECTOR ( 9 downto 0 );
    poff_en_i : in STD_LOGIC;
    poff_rst_i : in STD_LOGIC;
    poff_clk_i : in STD_LOGIC;
    dds_cos_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dds_sin_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dds_en_o : out STD_LOGIC;
    dds_clk_o : out STD_LOGIC;
    dds_rst_o : out STD_LOGIC;
    test_o : out STD_LOGIC;
    cos_fake_o : out STD_LOGIC;
    sin_fake_o : out STD_LOGIC;
    wave_clk_o : out STD_LOGIC;
    wave_rst_o : out STD_LOGIC;
    wave_en_o : out STD_LOGIC
  );
  attribute COUNTER_SIZE : integer;
  attribute COUNTER_SIZE of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter : entity is 32;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter : entity is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter : entity is 32;
  attribute DATA_SIZE : integer;
  attribute DATA_SIZE of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter : entity is 14;
  attribute LUT_SIZE : integer;
  attribute LUT_SIZE of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter : entity is 10;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter : entity is "nco_counter";
  attribute id : integer;
  attribute id of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter : entity is 1;
end dds_gnuradio_wrapper_nco_counter_0_0_nco_counter;

architecture STRUCTURE of dds_gnuradio_wrapper_nco_counter_0_0_nco_counter is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpt_off_mux_s : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal cpt_step_mux_s : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal handle_comm_n_10 : STD_LOGIC;
  signal handle_comm_n_11 : STD_LOGIC;
  signal handle_comm_n_7 : STD_LOGIC;
  signal handle_comm_n_8 : STD_LOGIC;
  signal handle_comm_n_9 : STD_LOGIC;
  signal pinc_sw1_s : STD_LOGIC;
  signal pinc_sw2_s : STD_LOGIC;
  signal pinc_sw_s : STD_LOGIC;
  signal poff_sw1_s : STD_LOGIC;
  signal poff_sw2_s : STD_LOGIC;
  signal poff_sw_s : STD_LOGIC;
  signal \^ref_clk_i\ : STD_LOGIC;
  signal \^ref_rst_i\ : STD_LOGIC;
begin
  \^ref_clk_i\ <= ref_clk_i;
  \^ref_rst_i\ <= ref_rst_i;
  dds_clk_o <= \^ref_clk_i\;
  dds_en_o <= \<const1>\;
  dds_rst_o <= \^ref_rst_i\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  wave_clk_o <= \^ref_clk_i\;
  wave_en_o <= \<const1>\;
  wave_rst_o <= \^ref_rst_i\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
handle_comm: entity work.dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_handcomm
     port map (
      E(0) => handle_comm_n_7,
      addr_s(1 downto 0) => addr_s(1 downto 0),
      \cpt_off_s_reg[0]\(0) => handle_comm_n_11,
      \cpt_step_s_reg[0]\(0) => handle_comm_n_10,
      pinc_sw_s => pinc_sw_s,
      pinc_sw_s_reg => handle_comm_n_9,
      poff_sw_s => poff_sw_s,
      poff_sw_s_reg => handle_comm_n_8,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_reset => s00_axi_reset,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(1 downto 0) => s00_axi_wdata(1 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid
    );
nco_inst1: entity work.dds_gnuradio_wrapper_nco_counter_0_0_nco_counter_logic
     port map (
      cos_fake_o => cos_fake_o,
      cpt_off_mux_s(9 downto 0) => cpt_off_mux_s(9 downto 0),
      cpt_step_mux_s(31 downto 0) => cpt_step_mux_s(31 downto 0),
      dds_cos_o(13 downto 0) => dds_cos_o(13 downto 0),
      dds_sin_o(13 downto 0) => dds_sin_o(13 downto 0),
      ref_clk_i => \^ref_clk_i\,
      ref_rst_i => \^ref_rst_i\,
      sin_fake_o => sin_fake_o,
      test_o => test_o
    );
pinc_sw1_s_reg: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => '1',
      D => pinc_sw_s,
      Q => pinc_sw1_s,
      R => '0'
    );
pinc_sw2_s_reg: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => '1',
      D => pinc_sw1_s,
      Q => pinc_sw2_s,
      R => '0'
    );
poff_sw1_s_reg: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => '1',
      D => poff_sw_s,
      Q => poff_sw1_s,
      R => '0'
    );
poff_sw2_s_reg: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => '1',
      D => poff_sw1_s,
      Q => poff_sw2_s,
      R => '0'
    );
wb_nco_inst: entity work.dds_gnuradio_wrapper_nco_counter_0_0_wb_nco_counter
     port map (
      E(0) => handle_comm_n_11,
      addr_s(1 downto 0) => addr_s(1 downto 0),
      axi_arready_reg(0) => handle_comm_n_7,
      axi_wready_reg(0) => handle_comm_n_10,
      cpt_off_mux_s(9 downto 0) => cpt_off_mux_s(9 downto 0),
      cpt_step_mux_s(31 downto 0) => cpt_step_mux_s(31 downto 0),
      pinc_i(31 downto 0) => pinc_i(31 downto 0),
      pinc_sw2_s => pinc_sw2_s,
      pinc_sw_s => pinc_sw_s,
      pinc_sw_s_reg_0 => handle_comm_n_9,
      poff_i(9 downto 0) => poff_i(9 downto 0),
      poff_sw2_s => poff_sw2_s,
      poff_sw_s => poff_sw_s,
      poff_sw_s_reg_0 => handle_comm_n_8,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_gnuradio_wrapper_nco_counter_0_0 is
  port (
    ref_clk_i : in STD_LOGIC;
    ref_rst_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    pinc_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pinc_en_i : in STD_LOGIC;
    pinc_rst_i : in STD_LOGIC;
    pinc_clk_i : in STD_LOGIC;
    poff_i : in STD_LOGIC_VECTOR ( 9 downto 0 );
    poff_en_i : in STD_LOGIC;
    poff_rst_i : in STD_LOGIC;
    poff_clk_i : in STD_LOGIC;
    dds_cos_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dds_sin_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dds_en_o : out STD_LOGIC;
    dds_clk_o : out STD_LOGIC;
    dds_rst_o : out STD_LOGIC;
    test_o : out STD_LOGIC;
    cos_fake_o : out STD_LOGIC;
    sin_fake_o : out STD_LOGIC;
    wave_clk_o : out STD_LOGIC;
    wave_rst_o : out STD_LOGIC;
    wave_en_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dds_gnuradio_wrapper_nco_counter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dds_gnuradio_wrapper_nco_counter_0_0 : entity is "dds_gnuradio_wrapper_nco_counter_0_0,nco_counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dds_gnuradio_wrapper_nco_counter_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of dds_gnuradio_wrapper_nco_counter_0_0 : entity is "nco_counter,Vivado 2016.4";
end dds_gnuradio_wrapper_nco_counter_0_0;

architecture STRUCTURE of dds_gnuradio_wrapper_nco_counter_0_0 is
  attribute COUNTER_SIZE : integer;
  attribute COUNTER_SIZE of U0 : label is 32;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of U0 : label is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of U0 : label is 32;
  attribute DATA_SIZE : integer;
  attribute DATA_SIZE of U0 : label is 14;
  attribute LUT_SIZE : integer;
  attribute LUT_SIZE of U0 : label is 10;
  attribute id : integer;
  attribute id of U0 : label is 1;
begin
U0: entity work.dds_gnuradio_wrapper_nco_counter_0_0_nco_counter
     port map (
      cos_fake_o => cos_fake_o,
      dds_clk_o => dds_clk_o,
      dds_cos_o(13 downto 0) => dds_cos_o(13 downto 0),
      dds_en_o => dds_en_o,
      dds_rst_o => dds_rst_o,
      dds_sin_o(13 downto 0) => dds_sin_o(13 downto 0),
      pinc_clk_i => pinc_clk_i,
      pinc_en_i => pinc_en_i,
      pinc_i(31 downto 0) => pinc_i(31 downto 0),
      pinc_rst_i => pinc_rst_i,
      poff_clk_i => poff_clk_i,
      poff_en_i => poff_en_i,
      poff_i(9 downto 0) => poff_i(9 downto 0),
      poff_rst_i => poff_rst_i,
      ref_clk_i => ref_clk_i,
      ref_rst_i => ref_rst_i,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(3 downto 0),
      s00_axi_arprot(2 downto 0) => s00_axi_arprot(2 downto 0),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(3 downto 0),
      s00_axi_awprot(2 downto 0) => s00_axi_awprot(2 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bresp(1 downto 0) => s00_axi_bresp(1 downto 0),
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rresp(1 downto 0) => s00_axi_rresp(1 downto 0),
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sin_fake_o => sin_fake_o,
      test_o => test_o,
      wave_clk_o => wave_clk_o,
      wave_en_o => wave_en_o,
      wave_rst_o => wave_rst_o
    );
end STRUCTURE;
