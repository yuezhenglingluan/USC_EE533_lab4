////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : comparator.vf
// /___/   /\     Timestamp : 01/27/2025 22:06:04
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/My Documents/Lab3/comparator.sch" comparator.vf
//Design Name: comparator
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale  100 ps / 10 ps

module AND7_HXILINX_comparator (O, I0, I1, I2, I3, I4, I5, I6);
    

   output O;

   input I0;
   input I1;
   input I2;
   input I3;
   input I4;
   input I5;
   input I6;

assign O = I0 && I1 && I2 && I3 && I4 && I5 && I6;

endmodule
`timescale 1ns / 1ps

module comp8_MUSER_comparator(A, 
                              B, 
                              EQ);

    input [7:0] A;
    input [7:0] B;
   output EQ;
   
   wire AB0;
   wire AB1;
   wire AB2;
   wire AB3;
   wire AB4;
   wire AB5;
   wire AB6;
   wire AB7;
   wire AB03;
   wire AB47;
   
   AND4 I_36_32 (.I0(AB7), 
                 .I1(AB6), 
                 .I2(AB5), 
                 .I3(AB4), 
                 .O(AB47));
   XNOR2 I_36_33 (.I0(B[6]), 
                  .I1(A[6]), 
                  .O(AB6));
   XNOR2 I_36_34 (.I0(B[7]), 
                  .I1(A[7]), 
                  .O(AB7));
   XNOR2 I_36_35 (.I0(B[5]), 
                  .I1(A[5]), 
                  .O(AB5));
   XNOR2 I_36_36 (.I0(B[4]), 
                  .I1(A[4]), 
                  .O(AB4));
   AND4 I_36_41 (.I0(AB3), 
                 .I1(AB2), 
                 .I2(AB1), 
                 .I3(AB0), 
                 .O(AB03));
   XNOR2 I_36_42 (.I0(B[2]), 
                  .I1(A[2]), 
                  .O(AB2));
   XNOR2 I_36_43 (.I0(B[3]), 
                  .I1(A[3]), 
                  .O(AB3));
   XNOR2 I_36_44 (.I0(B[1]), 
                  .I1(A[1]), 
                  .O(AB1));
   XNOR2 I_36_45 (.I0(B[0]), 
                  .I1(A[0]), 
                  .O(AB0));
   AND2 I_36_50 (.I0(AB47), 
                 .I1(AB03), 
                 .O(EQ));
endmodule
`timescale 1ns / 1ps

module comparator(a, 
                  amask, 
                  b, 
                  match);

    input [55:0] a;
    input [6:0] amask;
    input [55:0] b;
   output match;
   
   wire XLXN_20;
   wire XLXN_21;
   wire XLXN_22;
   wire XLXN_23;
   wire XLXN_28;
   wire XLXN_30;
   wire XLXN_32;
   wire XLXN_40;
   wire XLXN_41;
   wire XLXN_42;
   wire XLXN_43;
   wire XLXN_44;
   wire XLXN_45;
   wire XLXN_46;
   
   comp8_MUSER_comparator XLXI_1 (.A(a[55:48]), 
                                  .B(b[55:48]), 
                                  .EQ(XLXN_20));
   comp8_MUSER_comparator XLXI_2 (.A(a[47:40]), 
                                  .B(b[47:40]), 
                                  .EQ(XLXN_21));
   comp8_MUSER_comparator XLXI_3 (.A(a[39:32]), 
                                  .B(b[39:32]), 
                                  .EQ(XLXN_22));
   comp8_MUSER_comparator XLXI_4 (.A(a[31:24]), 
                                  .B(b[31:24]), 
                                  .EQ(XLXN_23));
   OR2B1 XLXI_13 (.I0(amask[5]), 
                  .I1(XLXN_21), 
                  .O(XLXN_45));
   OR2B1 XLXI_14 (.I0(amask[4]), 
                  .I1(XLXN_22), 
                  .O(XLXN_44));
   OR2B1 XLXI_15 (.I0(amask[3]), 
                  .I1(XLXN_23), 
                  .O(XLXN_40));
   OR2B1 XLXI_16 (.I0(amask[6]), 
                  .I1(XLXN_20), 
                  .O(XLXN_46));
   comp8_MUSER_comparator XLXI_17 (.A(a[23:16]), 
                                   .B(b[23:16]), 
                                   .EQ(XLXN_28));
   OR2B1 XLXI_18 (.I0(amask[2]), 
                  .I1(XLXN_28), 
                  .O(XLXN_41));
   comp8_MUSER_comparator XLXI_19 (.A(a[15:8]), 
                                   .B(b[15:8]), 
                                   .EQ(XLXN_30));
   OR2B1 XLXI_20 (.I0(amask[1]), 
                  .I1(XLXN_30), 
                  .O(XLXN_42));
   comp8_MUSER_comparator XLXI_21 (.A(a[7:0]), 
                                   .B(b[7:0]), 
                                   .EQ(XLXN_32));
   OR2B1 XLXI_22 (.I0(amask[0]), 
                  .I1(XLXN_32), 
                  .O(XLXN_43));
   AND7_HXILINX_comparator XLXI_23 (.I0(XLXN_43), 
                                    .I1(XLXN_42), 
                                    .I2(XLXN_41), 
                                    .I3(XLXN_40), 
                                    .I4(XLXN_44), 
                                    .I5(XLXN_45), 
                                    .I6(XLXN_46), 
                                    .O(match));
   // synthesis attribute HU_SET of XLXI_23 is "XLXI_23_0"
endmodule
