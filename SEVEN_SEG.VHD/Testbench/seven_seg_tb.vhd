--**********************************************************--
-- ENSA FES 
-- Filière : 1 ère Année GSEII
--**********************************************************
--Title : seven_seg_tb.vhd
--TP : Simulation,Synthèse et Implémentation FPGA
--Block : Décodeur 7 Segments
--***********************************************************
--File : seven_seg_tb.vhd
--Authors : COULIBALY Korota Arsène
--Created : 28/04/2020
--************************************************************
--Description :On affecte quelques scénarios à Data_in et on 
--observe la sortie
--************************************************************

--***********************************************************
-- Used Libraries
--***********************************************************

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

--*************************************************************
--        ENTITY Declaration
--*************************************************************
ENTITY seven_seg_tb IS 
END seven_seg_tb;

--*************************************************************
--        rtl Description
--*************************************************************

ARCHITECTURE rtl OF seven_seg_tb IS 
 COMPONENT seven_seg IS PORT(
   pol: IN std_logic;
   Data_in: IN std_logic_vector(3 DOWNTO 0);
   sortie: OUT std_logic_vector(6 DOWNTO 0));
 END COMPONENT;
 
 SIGNAL pol: std_logic;
 SIGNAL Data_in: std_logic_vector(3 DOWNTO 0);
 SIGNAL sortie: std_logic_vector(6 DOWNTO 0);
 BEGIN
   u0:seven_seg PORT MAP(
   pol => pol,
   Data_in => Data_in,
   sortie => sortie);
   pol  <= '1';
   PROCESS
     BEGIN
       Data_in <= "0001";
       WAIT FOR 10 ns;
       Data_in <= "0010";
       WAIT FOR 10 ns;
       Data_in <= "0011";
       WAIT FOR 10 ns;
       Data_in <= "1010";
       WAIT FOR 10 ns;
     END PROCESS;
     
END rtl;
       