---------------------------------------------------------------------------------
--
-- Copyright (c) 2017 by SISLAB Team, LSI Design Contest 2017.
-- The University of Engineering and Technology, Vietnam National University.
-- All right resevered.
--
-- Copyright notification
-- No part may be reproduced except as authorized by written permission.
-- 
-- @File            : NN_counter.vhd
-- @Author          : Xuan-Thuan Nguyen @Modifier      : Huy-Hung Ho
-- @Created Date    : 9 Nov 2017        @Modified Date : Nov 26 2017 06:30
-- @Project         : Neural Network
-- @Module          : NN_counter
-- @Description     : counter for signal to insert in k1, k2, t1 and t2
-- Input:
--  clk : 1 bit
--  reset   : 1 bit : high active
-- Output: 
--  out : 4 bit : high active
-- Latency:
-- @Version         : 0.1beta
-- @ID              : N/A
--
---------------------------------------------------------------------------------

---------------------------------------------------------------------------------
-- library declaration
---------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

---------------------------------------------------------------------------------
-- entity declaration
--------------------------------------------------------------------------------- 
entity counter is
    generic (n     : integer := 13;
             width : integer := 4);
    port (
        clk        : in std_logic;
        areset     : in std_logic;
        o_out      : out unsigned(3 downto 0)
    );
end counter; 

---------------------------------------------------------------------------------
-- architecture description
---------------------------------------------------------------------------------
architecture beh of counter is
    signal out_tmp      : unsigned(width - 1 downto 0);
begin
    process(clk, areset)
    begin
        if(areset = '1') then
            out_tmp <= (others => '0');
        elsif rising_edge(clk) then
            if out_tmp = to_unsigned((n-1), width) then
                out_tmp <= (others => '0');
            else
                out_tmp <= out_tmp + 1;
            end if;
        end if;
    end process;

    o_out <= out_tmp;
end beh;
