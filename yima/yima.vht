-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/18/2020 14:52:32"
                                                            
-- Vhdl Test Bench template for design  :  yima
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY yima_vhd_tst IS
END yima_vhd_tst;
ARCHITECTURE yima_arch OF yima_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL G1 : STD_LOGIC;
SIGNAL G2A : STD_LOGIC;
SIGNAL G2B : STD_LOGIC;
SIGNAL Y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT yima
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	G1 : IN STD_LOGIC;
	G2A : IN STD_LOGIC;
	G2B : IN STD_LOGIC;
	Y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : yima
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	G1 => G1,
	G2A => G2A,
	G2B => G2B,
	Y => Y
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        G1<='1';G2A<='0';G2B<='0';-- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        C<='0';B<='0';A<='0';wait for 20 ns;-- code executes for every event on sensitivity list  
		  C<='0';B<='0';A<='1';wait for 20 ns;
		  C<='0';B<='1';A<='0';wait for 20 ns;
		  C<='0';B<='1';A<='1';wait for 20 ns;
		  C<='1';B<='0';A<='0';wait for 20 ns;
		  C<='1';B<='0';A<='1';wait for 20 ns;
		  C<='1';B<='1';A<='0';wait for 20 ns;
		  C<='1';B<='1';A<='1';wait for 20 ns;                                                       
END PROCESS always;                                          
END yima_arch;
