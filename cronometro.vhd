library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity cronometro is
	port(CLOCK_50 : in std_logic;
		  SW       : in std_logic_vector(1 downto 0);
		  LEDG     : out std_logic_vector(8 downto 0);
		  HEX0     : out std_logic_vector(6 downto 0);
		  HEX1     : out std_logic_vector(6 downto 0);
		  HEX2     : out std_logic_vector(6 downto 0);
		  HEX3     : out std_logic_vector(6 downto 0));
end cronometro;

architecture Shell of cronometro is 
 signal s_seg : std_logic_vector(6 downto 0);
 signal s_mseg : std_logic_vector(6 downto 0);
 signal s_Out_mseg1 : std_logic_vector(3 downto 0);
 signal s_Out_mseg2 : std_logic_vector(3 downto 0);
 signal s_out_seg1  : std_logic_vector(3 downto 0);
 signal s_out_seg2  : std_logic_vector(3 downto 0);
 
 begin
	count : entity work.cronometrp(Behavioral)
						port map(clk    => CLOCK_50,
									reset  => SW(1),
									start  => sW(0),
									led    => LEDG(8),
									milseg => s_mseg,
									seg    => s_seg);
	
	BCD : entity work.to7SegDecoder(Behavioral)
					port map(
									
									
		