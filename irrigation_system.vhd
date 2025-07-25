library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity irrigation_system is
    Port (
        moisture_sensor : in STD_LOGIC;  -- Input from soil moisture sensor
        pump_control    : out STD_LOGIC  -- Output to water pump relay
    );
end irrigation_system;

architecture Behavioral of irrigation_system is
begin
    process(moisture_sensor)
    begin
        if moisture_sensor = '0' then
            pump_control <= '1';  -- Turn ON pump if soil is dry
        else
            pump_control <= '0';  -- Turn OFF pump if soil is moist
        end if;
    end process;
end Behavioral;