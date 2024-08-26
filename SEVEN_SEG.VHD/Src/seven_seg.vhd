--**********************************************************--
-- ENSA FES 
-- Filière : 1 ère Année GSEII
--**********************************************************
--Title : seven_seg.vhd
--TP : Simulation,Synthèse et Implémentation FPGA
--Block : Décodeur 7 Segments
--***********************************************************
--File : seven_seg.vhd
--Authors : COULIBALY Korota Arsène
--Created : 28/04/2020
--************************************************************
--Description :le decodeur transforme le code de 4 bits en pro-
--venance du compteur en un code de 7 bits pour la commande de 
--l'afficheur. si Pol=1 chaque led de l'afficheur est allumée
-- par un 1 logigue et par un 0 logique si Pol=0 
--************************************************************

--***********************************************************
-- Used Libraries
--***********************************************************

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

--*************************************************************
--        ENTITY Declaration
--*************************************************************

ENTITY seven_seg IS PORT(
pol: IN std_logic;
Data_in: IN std_logic_vector(3 DOWNTO 0);
sortie: OUT std_logic_vector(6 DOWNTO 0));
END seven_seg;

--***********************************************************
--          rtl Description
--***********************************************************
ARCHITECTURE rtl OF seven_seg IS 
BEGIN
  PROCESS(Data_in)
  BEGIN
    IF (pol='1')
    THEN
       CASE Data_in IS 
       WHEN "0000" =>
                  sortie<="1111110"; --0
       WHEN "0001" =>
                  sortie<="1111001"; --1
       WHEN "0010" =>
                  sortie<="0100100";--2
       WHEN "0011" =>
                  sortie<="0110000";--3
       WHEN "0100" =>
                  sortie<="0011001";--4
       WHEN "0101" =>
                  sortie<="0010010"; --5
       WHEN "0110" =>
                  sortie<="0000010"; --6
       WHEN "0111" =>
                  sortie<="1111000"; --7
       WHEN "1000" =>
                  sortie<="1111111";--8
       WHEN "1001" =>
                  sortie<="0010000"; --9
       WHEN OTHERS =>
                  sortie<="1111110"; --0
  END CASE;
      ELSE
          CASE Data_in IS 
            WHEN "0000" =>
                  sortie<="0000001";--0
            WHEN "0001" =>
                  sortie<="0000110";--1
            WHEN "0010" =>
                  sortie<="1011011";--2
            WHEN "0011" =>
                  sortie<="1001111";--3
            WHEN "0100" =>
                  sortie<="1100110";--4
            WHEN "0101" =>
                  sortie<="1101101";--5
            WHEN "0110" =>
                  sortie<="1111101";--6
            WHEN "0111" =>
                  sortie<="0000111";--7
            WHEN "1000" =>
                  sortie<="0000000";--8
            WHEN "1001" =>
                  sortie<="1101111";--9
            WHEN OTHERS =>
                  sortie<="0000001";--0
      END CASE;
      END IF;
    END PROCESS;
END rtl;