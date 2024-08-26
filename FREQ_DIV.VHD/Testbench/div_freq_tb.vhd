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

--*************************************************************
--            ENTITY Declaration
--*************************************************************

ENTITY freq_div_tb IS

END freq_div_tb;

--*************************************************************
--             rtl Description
--*************************************************************

ARCHITECTURE rtl OF freq_div_tb IS 
 
 COMPONENT freq_div IS 
   PORT(
     clk_in: IN std_logic;
     rst: IN std_logic;
    clk_out: OUT std_logic);
  END COMPONENT;
 
SIGNAL clk_in: std_logic;
SIGNAL rst: std_logic;
SIGNAL clk_out:std_logic;
BEGIN
  U0: freq_div PORT MAP(
    rst => rst,
    clk_in  => clk_in,
    clk_out => clk_out);
    
    PROCESS
      BEGIN
        clk_in <= '1';
        WAIT FOR 10 ns;
        clk_in <= '0';
        WAIT FOR 10 ns;
      END PROCESS;
      
    PROCESS
      BEGIN
        rst <= '1';
        WAIT FOR 45 ns;
        rst <= '0';
        WAIT FOR 5 ns;
      END PROCESS;
    END rtl;