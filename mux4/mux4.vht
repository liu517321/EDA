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
-- Generated on "05/11/2020 21:36:54"
                                                            
-- Vhdl Test Bench template for design  :  mux4
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux4_vhd_tst IS
END mux4_vhd_tst;
ARCHITECTURE mux4_arch OF mux4_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL d0 : STD_LOGIC;
SIGNAL d1 : STD_LOGIC;
SIGNAL d2 : STD_LOGIC;
SIGNAL d3 : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(0 TO 1);
SIGNAL y : STD_LOGIC;
COMPONENT mux4
	PORT (
	d0 : IN STD_LOGIC;
	d1 : IN STD_LOGIC;
	d2 : IN STD_LOGIC;
	d3 : IN STD_LOGIC;
	sel : IN STD_LOGIC_VECTOR(0 TO 1);
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux4
	PORT MAP (
-- list connections between master ports and signals
	d0 => d0,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	sel => sel,
	y => y
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        d0<='0';d1<='1';d2<='0';d3<='1';wait for 20ns;-- code that executes only once                      
			d0<='1';d1<='0';d2<='1';d3<='0';wait for 20ns;
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        sel<="00";wait for 20ns;-- code executes for every event on sensitivity list  
			sel<="01";wait for 20ns;
			sel<="10";wait for 20ns;
			sel<="11";wait for 20ns;
END PROCESS always;                                          
END mux4_arch;
