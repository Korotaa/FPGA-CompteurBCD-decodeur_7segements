--**********************************************************--
-- ENSA FES 
-- Filière : 1 ère Année GSEII
--**********************************************************
--Title : freq_div.vhd
--TP : Simulation,Synthèse et Implémentation FPGA
--Block : Diviseur de Fréquence
--***********************************************************
--File : freq_div.vhd
--Authors : COULIBALY Korota Arsène
--Created : 28/04/2020
--************************************************************
--Description :A partir de clk_in le circuit génère un clk_out
-- actif toutes les 1 ms. 
--************************************************************

--***********************************************************
-- Used Libraries
--***********************************************************

LIBRARY IEEE;
USE IEEE.NUMERIC_STD.all;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;
--*************************************************************
--        ENTITY Declaration
--*************************************************************

ENTITY freq_div IS PORT(
clk_in: IN std_logic;
rst: IN std_logic;
clk_out: OUT std_logic);
END freq_div;

--*************************************************************
--             rtl Description
--*************************************************************

ARCHITECTURE rtl OF freq_div IS 
 
SIGNAL count : INTEGER range 0 to 23456798;
BEGIN
PROCESS (rst, clk_in)
BEGIN
IF (rst = '0') THEN
count <= 0;
ELSIF(clk_in'event AND clk_in = '1') THEN
IF(count = 20000000) THEN
count <= 0;
ELSE
count <= count + 1;
END IF;
END IF;
END PROCESS;

PROCESS (rst, clk_in)
BEGIN
IF (rst = '0') THEN
clk_out <= '0';
ELSIF(clk_in'event AND clk_in = '1') THEN
IF( count <= 10000000) THEN
clk_out <= '1';
ELSE
clk_out <= '0';
END IF;
END IF;
END PROCESS;
END rtl;