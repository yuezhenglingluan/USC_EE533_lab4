////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : wordmatch.vf
// /___/   /\     Timestamp : 01/27/2025 22:21:42
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/My Documents/Lab3/wordmatch.sch" wordmatch.vf
//Design Name: wordmatch
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale  100 ps / 10 ps

module OR8_HXILINX_wordmatch (O, I0, I1, I2, I3, I4, I5, I6, I7);
    

   output O;

   input I0;
   input I1;
   input I2;
   input I3;
   input I4;
   input I5;
   input I6;
   input I7;

assign O = (I0 || I1 || I2 || I3 || I4 || I5 || I6 || I7);

endmodule
`timescale 1ns / 1ps

module wordmatch(datacomp, 
                 datain, 
                 wildcard, 
                 match);

    input [55:0] datacomp;
    input [111:0] datain;
    input [6:0] wildcard;
   output match;
   
   wire XLXN_23;
   wire XLXN_24;
   wire XLXN_25;
   wire XLXN_26;
   wire XLXN_27;
   wire XLXN_28;
   wire XLXN_29;
   wire XLXN_30;
   
   comparator XLXI_1 (.a(datacomp[55:0]), 
                      .amask(wildcard[6:0]), 
                      .b(datain[55:0]), 
                      .match(XLXN_23));
   comparator XLXI_2 (.a(datacomp[55:0]), 
                      .amask(wildcard[6:0]), 
                      .b(datain[63:8]), 
                      .match(XLXN_24));
   comparator XLXI_3 (.a(datacomp[55:0]), 
                      .amask(wildcard[6:0]), 
                      .b(datain[71:16]), 
                      .match(XLXN_25));
   comparator XLXI_4 (.a(datacomp[55:0]), 
                      .amask(wildcard[6:0]), 
                      .b(datain[79:24]), 
                      .match(XLXN_26));
   comparator XLXI_5 (.a(datacomp[55:0]), 
                      .amask(wildcard[6:0]), 
                      .b(datain[87:32]), 
                      .match(XLXN_27));
   comparator XLXI_6 (.a(datacomp[55:0]), 
                      .amask(wildcard[6:0]), 
                      .b(datain[95:40]), 
                      .match(XLXN_28));
   comparator XLXI_7 (.a(datacomp[55:0]), 
                      .amask(wildcard[6:0]), 
                      .b(datain[103:48]), 
                      .match(XLXN_29));
   comparator XLXI_8 (.a(datacomp[55:0]), 
                      .amask(wildcard[6:0]), 
                      .b(datain[111:56]), 
                      .match(XLXN_30));
   OR8_HXILINX_wordmatch XLXI_9 (.I0(XLXN_30), 
                                 .I1(XLXN_29), 
                                 .I2(XLXN_28), 
                                 .I3(XLXN_27), 
                                 .I4(XLXN_26), 
                                 .I5(XLXN_25), 
                                 .I6(XLXN_24), 
                                 .I7(XLXN_23), 
                                 .O(match));
   // synthesis attribute HU_SET of XLXI_9 is "XLXI_9_0"
endmodule
