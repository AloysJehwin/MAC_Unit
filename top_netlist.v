
// Generated by Cadence Genus(TM) Synthesis Solution 21.14-s082_1
// Generated on: Nov  8 2023 16:14:13 IST (Nov  8 2023 10:44:13 UTC)

// Verification Directory fv/top 

module top(a, b, clk, rst, mac_out);
  input [3:0] a, b;
  input clk, rst;
  output [7:0] mac_out;
  wire [3:0] a, b;
  wire clk, rst;
  wire [7:0] mac_out;
  wire [7:0] mac_out_temp;
  wire [3:0] ain;
  wire [3:0] bin;
  wire UNCONNECTED, UNCONNECTED0, n_7, n_10, n_11, n_12, n_13, n_15;
  wire n_16, n_18, n_19, n_22, n_24, n_25, n_26, n_27;
  wire n_28, n_29, n_30, n_31, n_32, n_34, n_36, n_37;
  wire n_39, n_40, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_49, n_50, n_51, n_52, n_53, n_54, n_55, n_56;
  wire n_57, n_58, n_59, n_60, n_61, n_62, n_63, n_64;
  wire n_66, n_67, n_68, n_69, n_71, n_72, n_73, n_74;
  wire n_75, n_76, n_77, n_78, n_79, n_81, n_83, n_84;
  wire n_85, n_86, n_87, n_88, n_89, n_91, n_92, n_93;
  wire n_94, n_95, n_96, n_97, n_98, n_99, n_100, n_102;
  wire n_103, n_104, n_107, n_108, n_109, n_110, n_112, n_113;
  wire n_114, n_117, n_119, n_120, n_122, n_123, n_124, n_125;
  wire n_126, n_127, n_128, n_129, n_130, n_131, n_132, n_133;
  wire n_134, n_137, n_138, n_139, n_140, n_141, n_142, n_143;
  wire n_144, n_145, n_148, n_149, n_150, n_151, n_152, n_153;
  wire n_154, n_155, n_156, n_157, n_160, n_161, n_162, n_163;
  wire n_164, n_165, n_166, n_180, n_183, n_184, n_186, n_190;
  wire n_192, n_196, n_198, n_200, n_206, n_211, n_212, n_213;
  wire n_214, n_221, n_223, n_233, n_234, n_235, n_237, n_238;
  wire n_239, n_240, n_244, n_245, n_247, n_248, n_254, n_255;
  wire n_257, n_258;
  DFFRX2 \p03_ain_reg[7] (.RN (n_165), .CK (clk), .D (n_166), .Q
       (mac_out[7]), .QN (mac_out_temp[7]));
  MXI2X1 g10446__2398(.A (n_162), .B (n_163), .S0 (n_156), .Y (n_166));
  DFFRHQX2 \p03_ain_reg[6] (.RN (n_165), .CK (clk), .D (n_164), .Q
       (mac_out[6]));
  MXI2X1 g10450__5107(.A (n_240), .B (n_239), .S0 (n_180), .Y (n_164));
  DFFRHQX4 \p03_ain_reg[5] (.RN (n_165), .CK (clk), .D (n_160), .Q
       (mac_out[5]));
  INVX1 g10448(.A (n_162), .Y (n_163));
  AOI21X2 g10449__6260(.A0 (n_161), .A1 (n_157), .B0 (n_155), .Y
       (n_162));
  MXI2X1 g10456__4319(.A (n_154), .B (n_153), .S0 (n_143), .Y (n_160));
  MXI2X1 g10457__8428(.A (n_234), .B (n_233), .S0 (mac_out_temp[7]), .Y
       (n_156));
  OAI21X2 g10454__5526(.A0 (n_142), .A1 (n_145), .B0 (n_144), .Y
       (n_157));
  NOR2BX1 g10458__6783(.AN (mac_out[6]), .B (n_152), .Y (n_155));
  CLKINVX1 g10460(.A (n_153), .Y (n_154));
  MXI2X1 g10464__3680(.A (n_150), .B (n_151), .S0 (n_131), .Y (n_152));
  MXI2X1 g10465__1617(.A (n_151), .B (n_150), .S0 (n_133), .Y (n_161));
  INVXL g10466(.A (n_148), .Y (n_149));
  BUFX2 g10461(.A (n_145), .Y (n_153));
  NAND2X1 g10467__2802(.A (mac_out[5]), .B (n_141), .Y (n_144));
  AOI21X2 g10463__1705(.A0 (n_126), .A1 (n_258), .B0 (n_244), .Y
       (n_145));
  MXI2X1 g10475__5122(.A (n_137), .B (n_138), .S0 (mac_out[4]), .Y
       (n_148));
  BUFX2 g10468(.A (n_142), .Y (n_143));
  CLKINVX2 g10469(.A (n_151), .Y (n_150));
  MXI2X1 g10474__7098(.A (n_139), .B (n_140), .S0 (n_255), .Y (n_141));
  MXI2X1 g10470__6131(.A (n_140), .B (n_139), .S0 (n_123), .Y (n_142));
  CLKINVX1 g10479(.A (n_137), .Y (n_138));
  AOI2BB2X2 g10472__1881(.A0N (n_254), .A1N (n_120), .B0 (n_122), .B1
       (n_139), .Y (n_151));
  BUFX2 g10480(.A (n_134), .Y (n_137));
  MXI2X1 g10489__4733(.A (n_130), .B (n_132), .S0 (n_213), .Y (n_133));
  MXI2X1 g10490__6161(.A (n_130), .B (n_132), .S0 (n_129), .Y (n_131));
  NOR2BX1 g10481__9315(.AN (n_128), .B (n_124), .Y (n_134));
  CLKINVX1 g10473(.A (n_126), .Y (n_127));
  CLKINVX1 g10482(.A (n_139), .Y (n_140));
  CLKINVX1 g10485(.A (n_124), .Y (n_125));
  OAI21X2 g10483__9945(.A0 (n_206), .A1 (n_108), .B0 (n_110), .Y
       (n_139));
  XNOR3X1 g10488__2883(.A (mac_out[5]), .B (n_212), .C (n_184), .Y
       (n_123));
  NAND2X1 g10491__2346(.A (n_120), .B (n_254), .Y (n_122));
  OAI21X1 g10476__1666(.A0 (n_119), .A1 (n_113), .B0 (n_112), .Y
       (n_126));
  NAND2BX1 g10484__7410(.AN (n_206), .B (n_117), .Y (n_128));
  NOR2BX1 g10486__6417(.AN (n_206), .B (n_117), .Y (n_124));
  CLKINVX2 g10500(.A (n_130), .Y (n_132));
  CLKINVX1 g10487(.A (n_113), .Y (n_114));
  OAI21X1 g10499__2398(.A0 (n_104), .A1 (n_97), .B0 (mac_out[3]), .Y
       (n_112));
  MXI2X1 g10501__5107(.A (n_100), .B (n_183), .S0 (n_77), .Y (n_120));
  AOI21X2 g10503__6260(.A0 (n_235), .A1 (n_184), .B0 (n_58), .Y
       (n_130));
  MXI2X1 g10494__4319(.A (n_98), .B (n_102), .S0 (n_109), .Y (n_117));
  XNOR3X1 g10496__8428(.A (n_103), .B (mac_out[3]), .C (n_96), .Y
       (n_113));
  NAND2X1 g10497__5526(.A (n_109), .B (n_107), .Y (n_110));
  NOR2X2 g10498__6783(.A (n_109), .B (n_107), .Y (n_108));
  NOR2XL g10517__3680(.A (n_103), .B (n_94), .Y (n_104));
  CLKINVX2 g10504(.A (n_102), .Y (n_107));
  DFFRHQX4 \p03_ain_reg[2] (.RN (n_165), .CK (clk), .D (n_93), .Q
       (mac_out[2]));
  INVXL g10493(.A (n_119), .Y (n_99));
  CLKINVX2 g10505(.A (n_98), .Y (n_102));
  NOR2BXL g10515__1617(.AN (n_103), .B (n_96), .Y (n_97));
  OAI21X2 g10514__1705(.A0 (n_83), .A1 (n_95), .B0 (n_92), .Y (n_100));
  INVXL g10521(.A (n_96), .Y (n_94));
  NOR2X2 g10516__5122(.A (n_103), .B (n_91), .Y (n_98));
  OAI21XL g10506__8246(.A0 (n_88), .A1 (n_87), .B0 (n_89), .Y (n_93));
  AOI21X1 g10495__7098(.A0 (mac_out[2]), .A1 (n_211), .B0 (n_86), .Y
       (n_119));
  OAI21X1 g10518__6131(.A0 (n_84), .A1 (n_85), .B0 (n_75), .Y (n_92));
  BUFX2 g10522(.A (n_91), .Y (n_96));
  MXI2X1 g10523__1881(.A (n_66), .B (n_76), .S0 (n_72), .Y (n_91));
  NAND2XL g10507__5115(.A (n_88), .B (n_87), .Y (n_89));
  NOR2BX1 g10508__7482(.AN (n_87), .B (n_88), .Y (n_86));
  NOR2X2 g10520__4733(.A (n_74), .B (n_85), .Y (n_95));
  NAND2X1 g10529__6161(.A (n_83), .B (n_73), .Y (n_84));
  XNOR3XL g10524__9315(.A (n_79), .B (mac_out[2]), .C (n_196), .Y
       (n_87));
  DFFRHQX4 \p03_ain_reg[1] (.RN (n_165), .CK (clk), .D (n_69), .Q
       (mac_out[1]));
  AOI21X2 g10526__2346(.A0 (n_37), .A1 (n_46), .B0 (n_76), .Y (n_85));
  MXI2XL g10539__1666(.A (n_71), .B (n_186), .S0 (n_44), .Y (n_75));
  CLKINVX1 g10532(.A (n_73), .Y (n_74));
  MXI2X1 g10541__7410(.A (n_59), .B (n_60), .S0 (n_61), .Y (n_72));
  OAI22XL g10540__6417(.A0 (n_71), .A1 (n_50), .B0 (n_51), .B1 (n_186),
       .Y (n_81));
  XOR2XL g10533__5477(.A (n_68), .B (n_67), .Y (n_69));
  AOI22X1 g10527__2398(.A0 (n_68), .A1 (n_67), .B0 (mac_out[1]), .B1
       (n_56), .Y (n_88));
  CLKINVX1 g10528(.A (n_76), .Y (n_66));
  NAND2X1 g10534__5107(.A (n_64), .B (n_63), .Y (n_73));
  NAND2BX2 g10537__4319(.AN (n_79), .B (n_78), .Y (n_76));
  NAND2BX1 g10542__8428(.AN (n_62), .B (n_55), .Y (n_64));
  AOI21XL g10536__5526(.A0 (n_62), .A1 (n_61), .B0 (n_37), .Y (n_63));
  CLKINVX1 g10549(.A (n_59), .Y (n_60));
  CLKXOR2X1 g10544__6783(.A (n_58), .B (n_57), .Y (n_77));
  MXI2X1 g10551__3680(.A (n_245), .B (n_47), .S0 (n_39), .Y (n_59));
  OAI21X2 g10543__1617(.A0 (n_52), .A1 (n_237), .B0 (n_54), .Y (n_78));
  MXI2XL g10552__2802(.A (n_45), .B (n_56), .S0 (mac_out[1]), .Y
       (n_67));
  NAND2BX1 g10553__1705(.AN (n_49), .B (n_57), .Y (n_71));
  CLKINVX1 g10545(.A (n_61), .Y (n_55));
  NAND2X2 g10546__5122(.A (n_237), .B (n_52), .Y (n_54));
  CLKINVX1 g10561(.A (n_50), .Y (n_51));
  NAND2X2 g10554__8246(.A (n_30), .B (n_43), .Y (n_57));
  NOR2X2 g10548__7098(.A (n_238), .B (n_49), .Y (n_61));
  BUFX2 g10556(.A (n_62), .Y (n_46));
  CLKINVX1 g10562(.A (n_45), .Y (n_56));
  XNOR2X1 g10563__6131(.A (n_44), .B (n_83), .Y (n_50));
  AOI21X1 g10557__1881(.A0 (n_13), .A1 (n_40), .B0 (n_22), .Y (n_43));
  AOI21X1 g10558__5115(.A0 (n_32), .A1 (n_31), .B0 (n_68), .Y (n_42));
  AOI22X2 g10559__7482(.A0 (n_15), .A1 (n_247), .B0 (n_214), .B1
       (n_16), .Y (n_47));
  NAND2X2 g10564__4733(.A (n_25), .B (n_34), .Y (n_52));
  MXI2XL g10566__6161(.A (n_27), .B (n_28), .S0 (n_198), .Y (n_45));
  AOI22X1 g10560__9315(.A0 (n_19), .A1 (n_29), .B0 (n_39), .B1 (n_26),
       .Y (n_62));
  CLKINVX1 g10585(.A (n_36), .Y (n_37));
  NAND2X1 g10573__9945(.A (n_7), .B (n_11), .Y (n_53));
  NAND2X2 g10567__2346(.A (n_200), .B (n_10), .Y (n_34));
  NOR2X1 g10568__7410(.A (n_24), .B (n_200), .Y (n_49));
  INVXL g10587(.A (n_214), .Y (n_36));
  NAND2X2 g10583__6417(.A (n_190), .B (n_12), .Y (n_83));
  NOR2XL g10569__5477(.A (n_32), .B (n_31), .Y (n_68));
  INVXL g10594(.A (n_29), .Y (n_30));
  INVXL g10574(.A (n_27), .Y (n_28));
  CLKINVX1 g10595(.A (n_29), .Y (n_26));
  NAND2X1 g10571__2398(.A (n_24), .B (n_11), .Y (n_25));
  AND2X1 g10599__5107(.A (n_18), .B (ain[3]), .Y (n_109));
  OAI21X1 g10572__6260(.A0 (bin[0]), .A1 (bin[2]), .B0 (n_221), .Y
       (n_22));
  CLKINVX1 g10592(.A (n_39), .Y (n_19));
  NAND2X1 g10598__4319(.A (ain[0]), .B (n_18), .Y (n_40));
  NAND2XL g10579__8428(.A (n_190), .B (bin[3]), .Y (n_58));
  NAND2XL g10597__5526(.A (ain[2]), .B (bin[0]), .Y (n_79));
  CLKINVX1 g10593(.A (n_15), .Y (n_16));
  CLKINVX1 g10608(.A (n_13), .Y (n_12));
  BUFX3 g10596(.A (n_15), .Y (n_29));
  CLKINVX1 g10576(.A (n_24), .Y (n_10));
  NAND2XL g10582__3680(.A (n_221), .B (bin[3]), .Y (n_44));
  INVXL g10575(.A (n_7), .Y (n_31));
  NAND2XL g10577__1617(.A (n_221), .B (bin[0]), .Y (n_27));
  NAND2X2 g10603__2802(.A (n_221), .B (bin[2]), .Y (n_39));
  CLKINVX1 g10605(.A (n_248), .Y (n_18));
  CLKAND2X3 g10602__1705(.A (ain[1]), .B (bin[1]), .Y (n_11));
  INVXL g10609(.A (bin[2]), .Y (n_13));
  NAND2XL g10580__5122(.A (bin[0]), .B (ain[3]), .Y (n_103));
  CLKAND2X2 g10578__8246(.A (bin[0]), .B (ain[0]), .Y (n_7));
  NAND2X2 g10604__7098(.A (bin[3]), .B (ain[0]), .Y (n_15));
  NAND2XL g10584__6131(.A (bin[3]), .B (ain[3]), .Y (n_129));
  NAND2X1 g10581__1881(.A (ain[0]), .B (bin[2]), .Y (n_24));
  DFFRHQX4 \p02_ain_reg[2] (.RN (n_165), .CK (clk), .D (b[2]), .Q
       (bin[2]));
  DFFRHQX1 \p01_ain_reg[3] (.RN (n_165), .CK (clk), .D (a[3]), .Q
       (ain[3]));
  DFFRHQX4 \p01_ain_reg[0] (.RN (n_165), .CK (clk), .D (a[0]), .Q
       (ain[0]));
  DFFRHQX2 \p02_ain_reg[0] (.RN (n_165), .CK (clk), .D (b[0]), .Q
       (bin[0]));
  DFFRHQX4 \p01_ain_reg[2] (.RN (n_165), .CK (clk), .D (a[2]), .Q
       (ain[2]));
  DFFRHQX4 \p01_ain_reg[1] (.RN (n_165), .CK (clk), .D (a[1]), .Q
       (ain[1]));
  DFFRHQX4 \p02_ain_reg[1] (.RN (n_165), .CK (clk), .D (b[1]), .Q
       (bin[1]));
  INVXL g10625(.A (rst), .Y (n_165));
  BUFX2 fopt10644(.A (n_161), .Y (n_180));
  INVX2 fopt10646(.A (n_100), .Y (n_183));
  CLKINVX1 fopt2(.A (n_100), .Y (n_184));
  INVXL fopt10648(.A (n_71), .Y (n_186));
  CLKINVX2 fopt10649(.A (n_192), .Y (n_190));
  CLKINVX1 fopt10651(.A (ain[2]), .Y (n_192));
  BUFX2 fopt10653(.A (n_78), .Y (n_196));
  CLKBUFX2 fopt10654(.A (n_40), .Y (n_198));
  CLKINVX2 fopt10655(.A (n_11), .Y (n_200));
  CLKXOR2X1 g2(.A (n_81), .B (n_95), .Y (n_206));
  XNOR2XL g10660(.A (n_79), .B (n_196), .Y (n_211));
  CLKXOR2X1 g10661(.A (n_254), .B (n_77), .Y (n_212));
  CLKXOR2X1 g10662(.A (mac_out[6]), .B (n_129), .Y (n_213));
  NAND2X1 g10663(.A (ain[2]), .B (bin[1]), .Y (n_214));
  DFFRHQX4 \p02_ain_reg[3] (.RN (n_165), .CK (clk), .D (b[3]), .Q
       (bin[3]));
  INVX3 fopt10676(.A (n_223), .Y (n_221));
  CLKINVX2 fopt10677(.A (ain[1]), .Y (n_223));
  AO21X1 g10686(.A0 (n_132), .A1 (n_151), .B0 (n_129), .Y (n_233));
  AOI21XL g10462__10687(.A0 (n_132), .A1 (n_151), .B0 (n_129), .Y
       (n_234));
  BUFX2 fopt10688(.A (n_57), .Y (n_235));
  CLKINVX2 fopt10689(.A (n_238), .Y (n_237));
  CLKINVX2 fopt10690(.A (n_53), .Y (n_238));
  INVX1 fopt10691(.A (n_240), .Y (n_239));
  INVXL fopt10692(.A (n_157), .Y (n_240));
  NOR2BX1 g10695(.AN (mac_out[4]), .B (n_134), .Y (n_244));
  CLKINVX2 fopt(.A (n_47), .Y (n_245));
  CLKAND2X3 g10696(.A (ain[2]), .B (bin[1]), .Y (n_247));
  CLKINVX1 g10697(.A (bin[1]), .Y (n_248));
  DFFRX2 \p03_ain_reg[0] (.RN (n_165), .CK (clk), .D (n_42), .Q
       (mac_out[0]), .QN (n_32));
  NAND2BX1 g10703(.AN (n_13), .B (ain[3]), .Y (n_254));
  XNOR2X1 g10704(.A (n_183), .B (n_212), .Y (n_255));
  NAND2BX2 g8(.AN (n_257), .B (n_125), .Y (n_258));
  NAND2BXL g9(.AN (mac_out[4]), .B (n_128), .Y (n_257));
  SDFFRX2 \p03_ain_reg[4] (.RN (n_165), .CK (clk), .D (n_149), .SI
       (n_148), .SE (n_127), .Q (mac_out[4]), .QN (UNCONNECTED));
  SDFFRX2 \p03_ain_reg[3] (.RN (n_165), .CK (clk), .D (n_99), .SI
       (n_119), .SE (n_114), .Q (mac_out[3]), .QN (UNCONNECTED0));
endmodule

