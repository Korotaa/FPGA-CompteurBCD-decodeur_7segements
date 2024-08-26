--**********************************************************--
-- ENSA FES 
-- Fili�re : 1 �re Ann�e GSEII
--**********************************************************
--Title : CMPT_BCD.vhd
--TP : Simulation,Synth�se et Impl�mentation FPGA
--Block : Compteur BCD
--***********************************************************
--File : CMPT_BCD.vhd
--Authors : COULIBALY Korota Arsène
--Created : 28/04/2020
--************************************************************
--Description :Notre compteur compte de 000 � 999 toutes N*1ms
--avec une remise � 0 lorsqu'il atteint 999.
--************************************************************

--***********************************************************
-- Used Libraries
--***********************************************************

LIBRARY IEEE;
USE IEEE.NUMERIC_STD;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

--*************************************************************
--        ENTITY Declaration
--*************************************************************

ENTITY CMPT_BCD IS PORT(
clk: IN std_logic;
rst: IN std_logic;
enable: IN std_logic;
count_1: OUT std_logic_vector(3 DOWNTO 0);
count_2: OUT std_logic_vector(3 DOWNTO 0);
count_3: OUT std_logic_vector(3 DOWNTO 0));

END CMPT_BCD;

--**************************************************************
--              rtl Description
--**************************************************************

ARCHITECTURE rtl OF CMPT_BCD IS 
 SIGNAL digit_0: std_logic_vector(3 DOWNTO 0):=(OTHERS => '0');
 SIGNAL digit_1: std_logic_vector(3 DOWNTO 0):=(OTHERS => '0');
 SIGNAL digit_2: std_logic_vector(3 DOWNTO 0):=(OTHERS => '0'); 
 
 BEGIN
   PROCESS(rst,clk)
     BEGIN
       IF rst='0' THEN
         digit_0 <= "0000";
         digit_1 <= "0000";
         digit_2 <= "0000";
         ELSIF clk'event AND clk='1' THEN
           IF enable <='1' THEN
             IF digit_2 <= 9 THEN
             digit_2 <= digit_2 + 1;
             ELSE 
               digit_2 <= "0000";
               IF digit_1 <= 9 THEN
               digit_1 <= digit_1 + 1;
               ELSE 
                 digit_1 <= "0000";
                 IF digit_0 <= 9 THEN
                 digit_0 <= digit_0 + 1;
                 ELSE
                   digit_0 <= "0000";
                 END IF;
               END IF;
             END IF;
           ELSE
             digit_0 <= "0000";
             digit_1 <= "0000";
             digit_2 <= "0000";
           END IF;
         END IF;
         END PROCESS;
         count_1 <= digit_0;
         count_2 <= digit_1;
         count_3 <= digit_2;
       END rtl;