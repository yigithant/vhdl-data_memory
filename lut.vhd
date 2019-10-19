library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lut is port
(
s1:in std_logic_vector(3 downto 0);
s2:in std_logic_vector(3 downto 0);
o:out std_logic_vector(7 downto 0)
);
end lut;

architecture yigithan of lut is
signal o1,o2:std_logic_vector(3 downto 0);
begin
process(o1)
begin
case (s1) is
when "0000"=>o1<="0001";
when "0001"=>o1<="0010";
when "0010"=>o1<="0011";
when "0011"=>o1<="0100";
when "0100"=>o1<="0101";
when "0101"=>o1<="0110";
when "0110"=>o1<="0111";
when "0111"=>o1<="1000";
when "1000"=>o1<="1001";
when "1001"=>o1<="1010";
when "1010"=>o1<="1011";
when "1011"=>o1<="1100";
when "1100"=>o1<="1110";
when "1110"=>o1<="1111";
when "1111"=>o1<="0000";
when others=>o1<="0000";
end case;
end process;

process(o2)
begin
case(s2) is
when "0000"=>o2<="0001";
when "0001"=>o2<="0010";
when "0010"=>o2<="0011";
when "0011"=>o2<="0100";
when "0100"=>o2<="0101";
when "0101"=>o2<="0110";
when "0110"=>o2<="0111";
when "0111"=>o2<="1000";
when "1000"=>o2<="1001";
when "1001"=>o2<="1010";
when "1010"=>o2<="1011";
when "1011"=>o2<="1100";
when "1100"=>o2<="1110";
when "1110"=>o2<="1111";
when "1111"=>o2<="0000";
when others=>o2<="0000";
end case;
end process;
o<=o1 & o2;
end yigithan;
