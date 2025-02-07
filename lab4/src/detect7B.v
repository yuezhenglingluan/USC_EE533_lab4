////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : detect7B.vf
// /___/   /\     Timestamp : 01/30/2025 23:56:43
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "C:/Documents and Settings/student/My Documents/Lab3/detect7B.sch" detect7B.vf
//Design Name: detect7B
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps
//`include "busmerge.v"
//`include "wordmatch.vf"

module detect7B(ce, 
                clk, 
                hwregA, 
                match_en, 
                mrst, 
                pipe1, 
                match, 
                pipe0);

    input ce;
    input clk;
    input [63:0] hwregA;
    input match_en;
    input mrst;
    input [71:0] pipe1;
   output match;
   output [71:0] pipe0;
   
   wire XLXN_18;
   wire [111:0] XLXN_25;
   wire XLXN_46;
   wire XLXN_49;
   wire match_DUMMY;
   wire [71:0] pipe0_DUMMY;
   
   assign match = match_DUMMY;
   assign pipe0[71:0] = pipe0_DUMMY[71:0];
   reg9B XLXI_1 (.ce(ce), 
                 .clk(clk), 
                 .clr(XLXN_18), 
                 .d(pipe1[71:0]), 
                 .q(pipe0_DUMMY[71:0]));
   busmerge XLXI_2 (.da(pipe0_DUMMY[47:0]), 
                    .db(pipe1[63:0]), 
                    .q(XLXN_25[111:0]));
   wordmatch XLXI_3 (.datacomp(hwregA[55:0]), 
                     .datain(XLXN_25[111:0]), 
                     .wildcard(hwregA[62:56]), 
                     .match(XLXN_49));
   FDCE XLXI_4 (.C(clk), 
                .CE(XLXN_46), 
                .CLR(XLXN_18), 
                .D(XLXN_46), 
                .Q(match_DUMMY));
   defparam XLXI_4.INIT = 1'b0;
   FD XLXI_5 (.C(clk), 
              .D(mrst), 
              .Q(XLXN_18));
   defparam XLXI_5.INIT = 1'b0;
   AND3B1 XLXI_15 (.I0(match_DUMMY), 
                   .I1(match_en), 
                   .I2(XLXN_49), 
                   .O(XLXN_46));
endmodule
