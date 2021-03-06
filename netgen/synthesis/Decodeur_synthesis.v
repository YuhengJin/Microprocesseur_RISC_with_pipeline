////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.87xd
//  \   \         Application: netgen
//  /   /         Filename: Decodeur_synthesis.v
// /___/   /\     Timestamp: Tue May 28 15:01:58 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Processus.ngc Decodeur_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: Processus.ngc
// Output file	: /home/yujin/4B/ArchiMat/Projet-System-Info/netgen/synthesis/Decodeur_synthesis.v
// # of Modules	: 1
// Design Name	: Processus
// Xilinx        : /usr/local/insa/Xilinx.ISE/13.4/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Processus (
  CLK, RST, INS_DI
);
  input CLK;
  input RST;
  input [31 : 0] INS_DI;
  wire \NLW_i_alu_S<15>_UNCONNECTED ;
  wire \NLW_i_alu_S<14>_UNCONNECTED ;
  wire \NLW_i_alu_S<13>_UNCONNECTED ;
  wire \NLW_i_alu_S<12>_UNCONNECTED ;
  wire \NLW_i_alu_S<11>_UNCONNECTED ;
  wire \NLW_i_alu_S<10>_UNCONNECTED ;
  wire \NLW_i_alu_S<9>_UNCONNECTED ;
  wire \NLW_i_alu_S<8>_UNCONNECTED ;
  wire \NLW_i_alu_S<7>_UNCONNECTED ;
  wire \NLW_i_alu_S<6>_UNCONNECTED ;
  wire \NLW_i_alu_S<5>_UNCONNECTED ;
  wire \NLW_i_alu_S<4>_UNCONNECTED ;
  wire \NLW_i_alu_S<3>_UNCONNECTED ;
  wire \NLW_i_alu_S<2>_UNCONNECTED ;
  wire \NLW_i_alu_S<1>_UNCONNECTED ;
  wire \NLW_i_alu_S<0>_UNCONNECTED ;
  wire NLW_i_alu_C_UNCONNECTED;
  wire NLW_i_alu_O_UNCONNECTED;
  wire NLW_i_alu_N_UNCONNECTED;
  wire NLW_i_alu_Z_UNCONNECTED;
  wire [1 : 1] al_B;
  GND   XST_GND (
    .G(al_B[1])
  );
  ALU   i_alu (
    .C(NLW_i_alu_C_UNCONNECTED),
    .O(NLW_i_alu_O_UNCONNECTED),
    .N(NLW_i_alu_N_UNCONNECTED),
    .Z(NLW_i_alu_Z_UNCONNECTED),
    .A({al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1]
}),
    .B({al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1], al_B[1]
}),
    .Ctr_Alu({al_B[1], al_B[1], al_B[1], al_B[1]}),
    .S({\NLW_i_alu_S<15>_UNCONNECTED , \NLW_i_alu_S<14>_UNCONNECTED , \NLW_i_alu_S<13>_UNCONNECTED , \NLW_i_alu_S<12>_UNCONNECTED , 
\NLW_i_alu_S<11>_UNCONNECTED , \NLW_i_alu_S<10>_UNCONNECTED , \NLW_i_alu_S<9>_UNCONNECTED , \NLW_i_alu_S<8>_UNCONNECTED , \NLW_i_alu_S<7>_UNCONNECTED 
, \NLW_i_alu_S<6>_UNCONNECTED , \NLW_i_alu_S<5>_UNCONNECTED , \NLW_i_alu_S<4>_UNCONNECTED , \NLW_i_alu_S<3>_UNCONNECTED , \NLW_i_alu_S<2>_UNCONNECTED 
, \NLW_i_alu_S<1>_UNCONNECTED , \NLW_i_alu_S<0>_UNCONNECTED })
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

