--**********************************************************--
-- ENSA FES 
-- Fili�re : 1 �re Ann�e GSEII
--**********************************************************
--Title : top.vhd
--TP : Simulation,Synth�se et Impl�mentation FPGA
--Block : TOP
--***********************************************************
--File : top.vhd
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
ENTITY top IS PORT(
clk: IN std_logic;
rst: IN std_logic;
pol: IN std_logic;
count_up: IN std_logic;
seg_out: OUT std_logic_vector(6 DOWNTO 0));
END top;

--*************************************************************
--              rtl Description
--*************************************************************

ARCHITECTURE bhv OF top IS 
COMPONENT seven_seg IS
  PORT(
    pol: IN std_logic;
    Data_in: IN std_logic_vector(3 DOWNTO 0);
    sortie: OUT std_logic_vector(6 DOWNTO 0));
  END COMPONENT;
  
  COMPONENT Temp_MUX IS 
    PORT(
      a:IN std_logic_vector(3 DOWNTO 0);
      b:IN std_logic_vector(3 DOWNTO 0); 
      c:IN std_logic_vector(3 DOWNTO 0); 
      rst: IN std_logic;
      clk: IN std_logic; 
      s_out:OUT std_logic_vector(3 DOWNTO 0));
    END COMPONENT;
    
  COMPONENT CMPT_BCD IS
    PORT(
      clk: IN std_logic;
      rst: IN std_logic;
      enable: IN std_logic;
      count_1: OUT std_logic_vector(3 DOWNTO 0);
      count_2: OUT std_logic_vector(3 DOWNTO 0);
      count_3: OUT std_logic_vector(3 DOWNTO 0));
    END COMPONENT;
    
  COMPONENT freq_div IS 
    PORT(
      clk_in: IN std_logic;
      rst: IN std_logic;
      clk_out: OUT std_logic);
    END COMPONENT;
    
SIGNAL sig_0: std_logic;
SIGNAL sig_1: std_logic_vector(3 DOWNTO 0);
SIGNAL sig_2: std_logic_vector(3 DOWNTO 0);
SIGNAL sig_3: std_logic_vector(3 DOWNTO 0);
SIGNAL sig_4: std_logic_vector(3 DOWNTO 0);
BEGIN
  
    freq: freq_div PORT MAP(
        clk_in => clk,
        rst => rst,
        clk_out => sig_0);
    
    compteur: CMPT_BCD PORT MAP(
             rst => rst,
             clk => sig_0,
             enable => count_up,
             count_1 => sig_1,
             count_2 => sig_2,
             count_3 => sig_3);
            
    mux: Temp_MUX PORT MAP(
        a => sig_1,
        b => sig_2,
        c => sig_3,
        rst => rst,
        clk => clk,
        s_out => sig_4);
      
    decodeur: seven_seg PORT MAP(
              pol => pol,
              Data_in => sig_4,
              sortie => seg_out);
  END bhv;