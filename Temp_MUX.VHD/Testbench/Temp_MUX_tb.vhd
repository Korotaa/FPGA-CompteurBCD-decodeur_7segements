--**********************************************************--
-- ENSA FES 
-- Filière : 1 ère Année GSEII
--**********************************************************
--Title : Temp_MUX_tb.vhd
--TP : Simulation,Synthèse et Implémentation FPGA
--Block : Multiplexeur Temporel
--***********************************************************
--File : Temp_MUX_tb.vhd
--Authors : COULIBALY Korota Arsène
--Created : 28/04/2020
--************************************************************
--Description :On affecte quelques scénarios à Differentes entrées
--d'observer la sortie s en fonction de sel.
--************************************************************

--***********************************************************
-- Used Libraries
--***********************************************************

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

--*************************************************************
--        ENTITY Declaration
--*************************************************************

ENTITY Temp_MUX_tb IS
END Temp_MUX_tb;

--*************************************************************
--             rtl Description
--*************************************************************

ARCHITECTURE rtl OF Temp_MUX_tb IS
 
 COMPONENT Temp_MUX IS PORT(
   a:IN std_logic_vector(3 DOWNTO 0);
   b:IN std_logic_vector(3 DOWNTO 0); 
   c:IN std_logic_vector(3 DOWNTO 0); 
   rst: IN std_logic;
   clk: IN std_logic;
   sel:IN std_logic_vector(1 DOWNTO 0);
   s_out:OUT std_logic_vector(3 DOWNTO 0));
 END COMPONENT;
 
 SIGNAL a:std_logic_vector(3 DOWNTO 0);
 SIGNAL b:std_logic_vector(3 DOWNTO 0); 
 SIGNAL c:std_logic_vector(3 DOWNTO 0); 
 SIGNAL rst: std_logic;
 SIGNAL clk: std_logic;
 SIGNAL sel: std_logic_vector(1 DOWNTO 0);
 SIGNAL s_out:std_logic_vector(3 DOWNTO 0);
 BEGIN
 u0: Temp_MUX PORT MAP(
 a => a,
 b => b,
 c => c,
 rst => rst,
 clk => clk,
 sel => sel,
 s_out => s_out);
 
    rst<='1';
    a<="0001";
    b<="0011";
    c<="0101";

 PROCESS
  BEGIN
  clk <= '1';
  WAIT FOR 10 ns;
  clk <= '0';
  WAIT FOR 10 ns;
END PROCESS; 
  
PROCESS
  BEGIN
    sel<="01";
    WAIT FOR 10 ns;
    sel<="10";
    WAIT FOR 10 ns;
    sel<="00";
    WAIT FOR 10 ns;
  END PROCESS;
  
END rtl;