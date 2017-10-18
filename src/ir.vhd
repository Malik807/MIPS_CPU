entity IR is
port(x:in std_logic_vector(31 downto 0);
 	clk,IRWrite:in std_logic;
 	y:out std_logic_vector(31 downto 0));
end IR;

architecture behavioral of IR is
signal reg : std_logic_vector(31 downto 0);
begin
	
	if rising_edge(clk) then
		if IRWrite = '1' then
			reg <= x;
		end if;
		y <= reg;
	end if;

end behavioral;