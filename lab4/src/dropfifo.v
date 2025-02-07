////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : dropfifo.vf
// /___/   /\     Timestamp : 01/31/2025 00:00:27
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "C:/Documents and Settings/student/My Documents/Lab3/dropfifo.sch" dropfifo.vf
//Design Name: dropfifo
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module FTCE_MXILINX_dropfifo(C, 
                             CE, 
                             CLR, 
                             T, 
                             Q);

    input C;
    input CE;
    input CLR;
    input T;
   output Q;
   
   wire TQ;
   wire Q_DUMMY;
   
   assign Q = Q_DUMMY;
   XOR2 I_36_32 (.I0(T), 
                 .I1(Q_DUMMY), 
                 .O(TQ));
   FDCE I_36_35 (.C(C), 
                 .CE(CE), 
                 .CLR(CLR), 
                 .D(TQ), 
                 .Q(Q_DUMMY));
   // synthesis attribute RLOC of I_36_35 is "X0Y0"
   defparam I_36_35.INIT = 1'b0;
endmodule
`timescale 1ns / 1ps

module CB8CE_MXILINX_dropfifo(C, 
                              CE, 
                              CLR, 
                              CEO, 
                              Q, 
                              TC);

    input C;
    input CE;
    input CLR;
   output CEO;
   output [7:0] Q;
   output TC;
   
   wire T2;
   wire T3;
   wire T4;
   wire T5;
   wire T6;
   wire T7;
   wire XLXN_1;
   wire [7:0] Q_DUMMY;
   wire TC_DUMMY;
   
   assign Q[7:0] = Q_DUMMY[7:0];
   assign TC = TC_DUMMY;
   FTCE_MXILINX_dropfifo I_Q0 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(XLXN_1), 
                               .Q(Q_DUMMY[0]));
   // synthesis attribute HU_SET of I_Q0 is "I_Q0_6"
   FTCE_MXILINX_dropfifo I_Q1 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(Q_DUMMY[0]), 
                               .Q(Q_DUMMY[1]));
   // synthesis attribute HU_SET of I_Q1 is "I_Q1_7"
   FTCE_MXILINX_dropfifo I_Q2 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(T2), 
                               .Q(Q_DUMMY[2]));
   // synthesis attribute HU_SET of I_Q2 is "I_Q2_3"
   FTCE_MXILINX_dropfifo I_Q3 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(T3), 
                               .Q(Q_DUMMY[3]));
   // synthesis attribute HU_SET of I_Q3 is "I_Q3_4"
   FTCE_MXILINX_dropfifo I_Q4 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(T4), 
                               .Q(Q_DUMMY[4]));
   // synthesis attribute HU_SET of I_Q4 is "I_Q4_5"
   FTCE_MXILINX_dropfifo I_Q5 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(T5), 
                               .Q(Q_DUMMY[5]));
   // synthesis attribute HU_SET of I_Q5 is "I_Q5_2"
   FTCE_MXILINX_dropfifo I_Q6 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(T6), 
                               .Q(Q_DUMMY[6]));
   // synthesis attribute HU_SET of I_Q6 is "I_Q6_1"
   FTCE_MXILINX_dropfifo I_Q7 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(T7), 
                               .Q(Q_DUMMY[7]));
   // synthesis attribute HU_SET of I_Q7 is "I_Q7_0"
   AND5 I_36_1 (.I0(Q_DUMMY[7]), 
                .I1(Q_DUMMY[6]), 
                .I2(Q_DUMMY[5]), 
                .I3(Q_DUMMY[4]), 
                .I4(T4), 
                .O(TC_DUMMY));
   AND2 I_36_2 (.I0(Q_DUMMY[4]), 
                .I1(T4), 
                .O(T5));
   AND3 I_36_11 (.I0(Q_DUMMY[5]), 
                 .I1(Q_DUMMY[4]), 
                 .I2(T4), 
                 .O(T6));
   AND4 I_36_15 (.I0(Q_DUMMY[3]), 
                 .I1(Q_DUMMY[2]), 
                 .I2(Q_DUMMY[1]), 
                 .I3(Q_DUMMY[0]), 
                 .O(T4));
   VCC I_36_16 (.P(XLXN_1));
   AND2 I_36_24 (.I0(Q_DUMMY[1]), 
                 .I1(Q_DUMMY[0]), 
                 .O(T2));
   AND3 I_36_26 (.I0(Q_DUMMY[2]), 
                 .I1(Q_DUMMY[1]), 
                 .I2(Q_DUMMY[0]), 
                 .O(T3));
   AND4 I_36_28 (.I0(Q_DUMMY[6]), 
                 .I1(Q_DUMMY[5]), 
                 .I2(Q_DUMMY[4]), 
                 .I3(T4), 
                 .O(T7));
   AND2 I_36_31 (.I0(CE), 
                 .I1(TC_DUMMY), 
                 .O(CEO));
endmodule
`timescale 1ns / 1ps

module comp8_MUSER_dropfifo(A, 
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

module M2_1_MXILINX_dropfifo(D0, 
                             D1, 
                             S0, 
                             O);

    input D0;
    input D1;
    input S0;
   output O;
   
   wire M0;
   wire M1;
   
   AND2B1 I_36_7 (.I0(S0), 
                  .I1(D0), 
                  .O(M0));
   OR2 I_36_8 (.I0(M1), 
               .I1(M0), 
               .O(O));
   AND2 I_36_9 (.I0(D1), 
                .I1(S0), 
                .O(M1));
endmodule
`timescale 1ns / 1ps

module FTCLEX_MXILINX_dropfifo(C, 
                               CE, 
                               CLR, 
                               D, 
                               L, 
                               T, 
                               Q);

    input C;
    input CE;
    input CLR;
    input D;
    input L;
    input T;
   output Q;
   
   wire MD;
   wire TQ;
   wire Q_DUMMY;
   
   assign Q = Q_DUMMY;
   M2_1_MXILINX_dropfifo I_36_30 (.D0(TQ), 
                                  .D1(D), 
                                  .S0(L), 
                                  .O(MD));
   // synthesis attribute HU_SET of I_36_30 is "I_36_30_8"
   XOR2 I_36_32 (.I0(T), 
                 .I1(Q_DUMMY), 
                 .O(TQ));
   FDCE I_36_35 (.C(C), 
                 .CE(CE), 
                 .CLR(CLR), 
                 .D(MD), 
                 .Q(Q_DUMMY));
   // synthesis attribute RLOC of I_36_35 is "X0Y0"
   defparam I_36_35.INIT = 1'b0;
endmodule
`timescale 1ns / 1ps

module CB8CLE_MXILINX_dropfifo(C, 
                               CE, 
                               CLR, 
                               D, 
                               L, 
                               CEO, 
                               Q, 
                               TC);

    input C;
    input CE;
    input CLR;
    input [7:0] D;
    input L;
   output CEO;
   output [7:0] Q;
   output TC;
   
   wire OR_CE_L;
   wire T2;
   wire T3;
   wire T4;
   wire T5;
   wire T6;
   wire T7;
   wire XLXN_1;
   wire [7:0] Q_DUMMY;
   wire TC_DUMMY;
   
   assign Q[7:0] = Q_DUMMY[7:0];
   assign TC = TC_DUMMY;
   FTCLEX_MXILINX_dropfifo I_Q0 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[0]), 
                                 .L(L), 
                                 .T(XLXN_1), 
                                 .Q(Q_DUMMY[0]));
   // synthesis attribute HU_SET of I_Q0 is "I_Q0_9"
   FTCLEX_MXILINX_dropfifo I_Q1 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[1]), 
                                 .L(L), 
                                 .T(Q_DUMMY[0]), 
                                 .Q(Q_DUMMY[1]));
   // synthesis attribute HU_SET of I_Q1 is "I_Q1_10"
   FTCLEX_MXILINX_dropfifo I_Q2 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[2]), 
                                 .L(L), 
                                 .T(T2), 
                                 .Q(Q_DUMMY[2]));
   // synthesis attribute HU_SET of I_Q2 is "I_Q2_11"
   FTCLEX_MXILINX_dropfifo I_Q3 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[3]), 
                                 .L(L), 
                                 .T(T3), 
                                 .Q(Q_DUMMY[3]));
   // synthesis attribute HU_SET of I_Q3 is "I_Q3_12"
   FTCLEX_MXILINX_dropfifo I_Q4 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[4]), 
                                 .L(L), 
                                 .T(T4), 
                                 .Q(Q_DUMMY[4]));
   // synthesis attribute HU_SET of I_Q4 is "I_Q4_13"
   FTCLEX_MXILINX_dropfifo I_Q5 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[5]), 
                                 .L(L), 
                                 .T(T5), 
                                 .Q(Q_DUMMY[5]));
   // synthesis attribute HU_SET of I_Q5 is "I_Q5_14"
   FTCLEX_MXILINX_dropfifo I_Q6 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[6]), 
                                 .L(L), 
                                 .T(T6), 
                                 .Q(Q_DUMMY[6]));
   // synthesis attribute HU_SET of I_Q6 is "I_Q6_15"
   FTCLEX_MXILINX_dropfifo I_Q7 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[7]), 
                                 .L(L), 
                                 .T(T7), 
                                 .Q(Q_DUMMY[7]));
   // synthesis attribute HU_SET of I_Q7 is "I_Q7_16"
   AND3 I_36_8 (.I0(Q_DUMMY[5]), 
                .I1(Q_DUMMY[4]), 
                .I2(T4), 
                .O(T6));
   AND2 I_36_11 (.I0(Q_DUMMY[4]), 
                 .I1(T4), 
                 .O(T5));
   VCC I_36_12 (.P(XLXN_1));
   AND2 I_36_19 (.I0(Q_DUMMY[1]), 
                 .I1(Q_DUMMY[0]), 
                 .O(T2));
   AND3 I_36_21 (.I0(Q_DUMMY[2]), 
                 .I1(Q_DUMMY[1]), 
                 .I2(Q_DUMMY[0]), 
                 .O(T3));
   AND4 I_36_23 (.I0(Q_DUMMY[3]), 
                 .I1(Q_DUMMY[2]), 
                 .I2(Q_DUMMY[1]), 
                 .I3(Q_DUMMY[0]), 
                 .O(T4));
   AND4 I_36_25 (.I0(Q_DUMMY[6]), 
                 .I1(Q_DUMMY[5]), 
                 .I2(Q_DUMMY[4]), 
                 .I3(T4), 
                 .O(T7));
   AND5 I_36_29 (.I0(Q_DUMMY[7]), 
                 .I1(Q_DUMMY[6]), 
                 .I2(Q_DUMMY[5]), 
                 .I3(Q_DUMMY[4]), 
                 .I4(T4), 
                 .O(TC_DUMMY));
   AND2 I_36_33 (.I0(CE), 
                 .I1(TC_DUMMY), 
                 .O(CEO));
   OR2 I_36_49 (.I0(CE), 
                .I1(L), 
                .O(OR_CE_L));
endmodule
`timescale 1ns / 1ps

module FD8CE_MXILINX_dropfifo(C, 
                              CE, 
                              CLR, 
                              D, 
                              Q);

    input C;
    input CE;
    input CLR;
    input [7:0] D;
   output [7:0] Q;
   
   
   FDCE I_Q0 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[0]), 
              .Q(Q[0]));
   defparam I_Q0.INIT = 1'b0;
   FDCE I_Q1 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[1]), 
              .Q(Q[1]));
   defparam I_Q1.INIT = 1'b0;
   FDCE I_Q2 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[2]), 
              .Q(Q[2]));
   defparam I_Q2.INIT = 1'b0;
   FDCE I_Q3 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[3]), 
              .Q(Q[3]));
   defparam I_Q3.INIT = 1'b0;
   FDCE I_Q4 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[4]), 
              .Q(Q[4]));
   defparam I_Q4.INIT = 1'b0;
   FDCE I_Q5 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[5]), 
              .Q(Q[5]));
   defparam I_Q5.INIT = 1'b0;
   FDCE I_Q6 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[6]), 
              .Q(Q[6]));
   defparam I_Q6.INIT = 1'b0;
   FDCE I_Q7 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[7]), 
              .Q(Q[7]));
   defparam I_Q7.INIT = 1'b0;
endmodule
`timescale 1ns / 1ps

module dropfifo(clk, 
                drop_pkt, 
                fiforead, 
                fifowrite, 
                firstword, 
                in_fifo, 
                lastword, 
                rst, 
                out_fifo, 
                valid_data);

    input clk;
    input drop_pkt;
    input fiforead;
    input fifowrite;
    input firstword;
    input [71:0] in_fifo;
    input lastword;
    input rst;
   output [71:0] out_fifo;
   output valid_data;
   
   wire [7:0] raddr;
   wire [7:0] waddr;
   wire XLXN_23;
   wire XLXN_24;
   wire XLXN_26;
   wire XLXN_27;
   wire XLXN_31;
   wire [7:0] XLXN_34;
   wire XLXN_40;
   wire XLXN_41;
   wire XLXN_44;
   wire XLXN_47;
   wire [71:0] XLXN_48;
   wire XLXN_49;
   
   FD XLXI_2 (.C(clk), 
              .D(firstword), 
              .Q(XLXN_23));
   defparam XLXI_2.INIT = 1'b0;
   FD XLXI_3 (.C(clk), 
              .D(lastword), 
              .Q(XLXN_24));
   defparam XLXI_3.INIT = 1'b0;
   FD XLXI_4 (.C(clk), 
              .D(fifowrite), 
              .Q(XLXN_47));
   defparam XLXI_4.INIT = 1'b0;
   OR2 XLXI_5 (.I0(XLXN_24), 
               .I1(XLXN_23), 
               .O(XLXN_26));
   FD8CE_MXILINX_dropfifo XLXI_6 (.C(clk), 
                                  .CE(XLXN_27), 
                                  .CLR(rst), 
                                  .D(waddr[7:0]), 
                                  .Q(XLXN_34[7:0]));
   // synthesis attribute HU_SET of XLXI_6 is "XLXI_6_17"
   AND2B1 XLXI_7 (.I0(XLXN_31), 
                  .I1(XLXN_26), 
                  .O(XLXN_27));
   FD XLXI_8 (.C(clk), 
              .D(drop_pkt), 
              .Q(XLXN_31));
   defparam XLXI_8.INIT = 1'b0;
   CB8CLE_MXILINX_dropfifo XLXI_9 (.C(clk), 
                                   .CE(XLXN_47), 
                                   .CLR(rst), 
                                   .D(XLXN_34[7:0]), 
                                   .L(XLXN_31), 
                                   .CEO(), 
                                   .Q(waddr[7:0]), 
                                   .TC());
   // synthesis attribute HU_SET of XLXI_9 is "XLXI_9_18"
   comp8_MUSER_dropfifo XLXI_10 (.A(waddr[7:0]), 
                                 .B(raddr[7:0]), 
                                 .EQ(XLXN_41));
   comp8_MUSER_dropfifo XLXI_11 (.A(raddr[7:0]), 
                                 .B(XLXN_34[7:0]), 
                                 .EQ(XLXN_40));
   CB8CE_MXILINX_dropfifo XLXI_12 (.C(clk), 
                                   .CE(XLXN_44), 
                                   .CLR(rst), 
                                   .CEO(), 
                                   .Q(raddr[7:0]), 
                                   .TC());
   // synthesis attribute HU_SET of XLXI_12 is "XLXI_12_19"
   AND3B2 XLXI_13 (.I0(XLXN_40), 
                   .I1(XLXN_41), 
                   .I2(fiforead), 
                   .O(XLXN_44));
   FDC XLXI_14 (.C(clk), 
                .CLR(rst), 
                .D(XLXN_44), 
                .Q(valid_data));
   defparam XLXI_14.INIT = 1'b0;
   reg9B XLXI_15 (.ce(XLXN_49), 
                  .clk(clk), 
                  .clr(rst), 
                  .d(in_fifo[71:0]), 
                  .q(XLXN_48[71:0]));
   VCC XLXI_16 (.P(XLXN_49));
   dual_core_memory_element XLXI_17 (.addra(waddr[7:0]), 
                                     .addrb(raddr[7:0]), 
                                     .clka(clk), 
                                     .clkb(clk), 
                                     .dina(XLXN_48[71:0]), 
                                     .wea(XLXN_47), 
                                     .doutb(out_fifo[71:0]));
endmodule
