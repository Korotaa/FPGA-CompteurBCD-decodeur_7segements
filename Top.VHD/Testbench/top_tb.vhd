--**********************************************************--
-- ENSA FES 
-- Fili�re : 1 �re Ann�e GSEII
--**********************************************************
--Title : top_tb.vhd
--TP : Simulation,Synth�se et Impl�mentation FPGA
--Block : TOP
--***********************************************************
--File : top_tb.vhd
--Authors : COULIBALY Korota Ars�ne
--Created : 28/04/2020
--************************************************************
--Description :On rassemble tous les blocs en un seul bloc
--************************************************************

--***********************************************************
--               Used Libraries
--***********************************************************

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

--*************************************************************
--              ENTITY Declaration
--*************************************************************
ENTITY top_tb IS

END top_tb;

--*************************************************************
--              rtl Description
--*************************************************************

ARCHITECTURE bhv OF top_tb IS 

COMPONENT top IS
  PORT(
      clk: IN std_logic;
      rst: IN std_logic;
      pol: IN std_logic;
      count_up: IN std_logic;
      seg_out: OUT std_logic_vector(6 DOWNTO 0));
    END COMPONENT;
    
SIGNAL clk: std_logic;
SIGNAL rst: std_logic;
SIGNAL pol: std_logic;
SIGNAL count_up: std_logic;
SIGNAL seg_out: std_logic_vector(6 DOWNTO 0);
BEGIN
  U0: top PORT MAP(
     clk => clk,
     rst => rst,
     pol => pol,
     count_up => count_up,
     seg_out => seg_out);
     pol <= '1';
     count_up <= '1';
  PROCESS
    BEGIN
      clk <='1';
      WAIT FOR 10 ns;
      clk <='0';
      WAIT FOR 10 ns;
    END PROCESS;
    
  PROCESS
    BEGIN
      rst <='1';
      WAIT FOR 30 ns;
      rst <='0';
      WAIT FOR 10 ns;
    END PROCESS;
  END bhv;