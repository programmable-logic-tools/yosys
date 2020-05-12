module  \$_DFF_N_ (input D, C, output Q); SB_DFFN _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C)); endmodule
module  \$_DFF_P_ (input D, C, output Q); SB_DFF  _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C)); endmodule

module  \$_DFFE_NN_ (input D, C, E, output Q); SB_DFFNE _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .E(!E)); endmodule
module  \$_DFFE_PN_ (input D, C, E, output Q); SB_DFFE  _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .E(!E)); endmodule

module  \$_DFFE_NP_ (input D, C, E, output Q); SB_DFFNE _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .E(E)); endmodule
module  \$_DFFE_PP_ (input D, C, E, output Q); SB_DFFE  _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .E(E)); endmodule

module  \$_DFF_NN0_ (input D, C, R, output Q); SB_DFFNR _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .R(!R)); endmodule
module  \$_DFF_NN1_ (input D, C, R, output Q); SB_DFFNS _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .S(!R)); endmodule
module  \$_DFF_PN0_ (input D, C, R, output Q); SB_DFFR  _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .R(!R)); endmodule
module  \$_DFF_PN1_ (input D, C, R, output Q); SB_DFFS  _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .S(!R)); endmodule

module  \$_DFF_NP0_ (input D, C, R, output Q); SB_DFFNR _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .R(R)); endmodule
module  \$_DFF_NP1_ (input D, C, R, output Q); SB_DFFNS _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .S(R)); endmodule
module  \$_DFF_PP0_ (input D, C, R, output Q); SB_DFFR  _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .R(R)); endmodule
module  \$_DFF_PP1_ (input D, C, R, output Q); SB_DFFS  _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .S(R)); endmodule

module  \$__DFFE_NN0 (input D, C, E, R, output Q); SB_DFFNER _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .E(E), .R(!R)); endmodule
module  \$__DFFE_NN1 (input D, C, E, R, output Q); SB_DFFNES _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .E(E), .S(!R)); endmodule
module  \$__DFFE_PN0 (input D, C, E, R, output Q); SB_DFFER  _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .E(E), .R(!R)); endmodule
module  \$__DFFE_PN1 (input D, C, E, R, output Q); SB_DFFES  _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .E(E), .S(!R)); endmodule

module  \$__DFFE_NP0 (input D, C, E, R, output Q); SB_DFFNER _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .E(E), .R(R)); endmodule
module  \$__DFFE_NP1 (input D, C, E, R, output Q); SB_DFFNES _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .E(E), .S(R)); endmodule
module  \$__DFFE_PP0 (input D, C, E, R, output Q); SB_DFFER  _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .E(E), .R(R)); endmodule
module  \$__DFFE_PP1 (input D, C, E, R, output Q); SB_DFFES  _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .E(E), .S(R)); endmodule

`ifndef NO_LUT
module \$lut (A, Y);
  parameter WIDTH = 0;
  parameter LUT = 0;

  input [WIDTH-1:0] A;
  output Y;

  generate
    if (WIDTH == 1) begin
      localparam [15:0] INIT = {{8{LUT[1]}}, {8{LUT[0]}}};
      SB_LUT4 #(.LUT_INIT(INIT)) _TECHMAP_REPLACE_ (.O(Y),
        .I0(1'b0), .I1(1'b0), .I2(1'b0), .I3(A[0]));
    end else
    if (WIDTH == 2) begin
      localparam [15:0] INIT = {{4{LUT[3]}}, {4{LUT[2]}}, {4{LUT[1]}}, {4{LUT[0]}}};
      SB_LUT4 #(.LUT_INIT(INIT)) _TECHMAP_REPLACE_ (.O(Y),
        .I0(1'b0), .I1(1'b0), .I2(A[0]), .I3(A[1]));
    end else
    if (WIDTH == 3) begin
      localparam [15:0] INIT = {{2{LUT[7]}}, {2{LUT[6]}}, {2{LUT[5]}}, {2{LUT[4]}}, {2{LUT[3]}}, {2{LUT[2]}}, {2{LUT[1]}}, {2{LUT[0]}}};
      SB_LUT4 #(.LUT_INIT(INIT)) _TECHMAP_REPLACE_ (.O(Y),
        .I0(1'b0), .I1(A[0]), .I2(A[1]), .I3(A[2]));
    end else
    if (WIDTH == 4) begin
      SB_LUT4 #(.LUT_INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y),
        .I0(A[0]), .I1(A[1]), .I2(A[2]), .I3(A[3]));
    end else begin
      wire _TECHMAP_FAIL_ = 1;
    end
  endgenerate
endmodule
`endif

module \$__ABC9_PACK_44 (input [A_WIDTH-1:0] A, input [B_WIDTH-1:0] B, output X, Y);
  parameter A_WIDTH = 0;
  parameter A_LUT = 0;
  parameter B_WIDTH = 0;
  parameter B_LUT = 0;

  parameter _TECHMAP_BITS_CONNMAP_ = 0;
  parameter [B_WIDTH*_TECHMAP_BITS_CONNMAP_-1:0] _TECHMAP_CONNMAP_B_ = 0;
  parameter [_TECHMAP_BITS_CONNMAP_-1:0] _TECHMAP_CONNMAP_X_ = 0;

  generate
    if (A_WIDTH == 2) begin
      localparam [15:0] A_LUT2 = {{4{A_LUT[3]}}, {4{A_LUT[2]}}, {4{A_LUT[1]}}, {4{A_LUT[0]}}};
      \$__ABC9_PACK_44 #(.A_WIDTH(4), .A_LUT(A_LUT2), .B_WIDTH(B_WIDTH), .B_LUT(B_LUT))
        _TECHMAP_REPLACE_ (.A({A[1],A[0],1'b0,1'b0}), .B(B), .X(X), .Y(Y));
    end
    else if (A_WIDTH == 3) begin
      localparam [15:0] A_LUT2 = {{2{A_LUT[7]}}, {2{A_LUT[6]}}, {2{A_LUT[5]}}, {2{A_LUT[4]}}, {2{A_LUT[3]}}, {2{A_LUT[2]}}, {2{A_LUT[1]}}, {2{A_LUT[0]}}};
      \$__ABC9_PACK_44 #(.A_WIDTH(4), .A_LUT(A_LUT2), .B_WIDTH(B_WIDTH), .B_LUT(B_LUT))
        _TECHMAP_REPLACE_ (.A({A[2],A[1],A[0],1'b0}), .B(B), .X(X), .Y(Y));
    end
    else if (B_WIDTH == 2) begin
      localparam [15:0] B_LUT2 = {{4{B_LUT[3]}}, {4{B_LUT[2]}}, {4{B_LUT[1]}}, {4{B_LUT[0]}}};
      \$__ABC9_PACK_44 #(.A_WIDTH(4), .A_LUT(A_LUT), .B_WIDTH(4), .B_LUT(B_LUT2))
        _TECHMAP_REPLACE_ (.A(A), .B({B[1],B[0],1'b0,1'b0}), .X(X), .Y(Y));
    end
    else if (B_WIDTH == 3) begin
      localparam [15:0] B_LUT2 = {{2{B_LUT[7]}}, {2{B_LUT[6]}}, {2{B_LUT[5]}}, {2{B_LUT[4]}}, {2{B_LUT[3]}}, {2{B_LUT[2]}}, {2{B_LUT[1]}}, {2{B_LUT[0]}}};
      \$__ABC9_PACK_44 #(.A_WIDTH(4), .A_LUT(A_LUT), .B_WIDTH(4), .B_LUT(B_LUT2))
        _TECHMAP_REPLACE_ (.A(A), .B({B[2],B[1],B[0],1'b0}), .X(X), .Y(Y));
    end
    else if (A_WIDTH == 4 && B_WIDTH == 4) begin
      wire LO;
      ICESTORM_LC #(.LUT_INIT(A_LUT)) a_lut (.I0(A[0]), .I1(A[1]), .I2(A[2]), .I3(A[3]), .O(X), .LO(LO));

      if (_TECHMAP_CONNMAP_B_[_TECHMAP_BITS_CONNMAP_*0 +: _TECHMAP_BITS_CONNMAP_] == _TECHMAP_CONNMAP_X_) begin
        // Move I0 to I2
        localparam [15:0] B_LUT2 = {B_LUT[15], B_LUT[11], B_LUT[14], B_LUT[10], B_LUT[13], B_LUT[9], B_LUT[12], B_LUT[8],
          B_LUT[7], B_LUT[3], B_LUT[6], B_LUT[2], B_LUT[5], B_LUT[1], B_LUT[4], B_LUT[0] };
        ICESTORM_LC #(.LUT_INIT(B_LUT2)) b_lut (.I0(B[1]), .I1(B[2]), .I2(LO), .I3(B[3]), .O(Y));
      end
      else if (_TECHMAP_CONNMAP_B_[_TECHMAP_BITS_CONNMAP_*1 +: _TECHMAP_BITS_CONNMAP_] == _TECHMAP_CONNMAP_X_) begin
        // Move I1 to I2
        localparam [15:0] B_LUT2 = {B_LUT[15], B_LUT[14], B_LUT[11], B_LUT[10], B_LUT[13], B_LUT[12], B_LUT[9], B_LUT[8],
          B_LUT[7], B_LUT[6], B_LUT[3], B_LUT[2], B_LUT[5], B_LUT[4], B_LUT[1], B_LUT[0] };
        ICESTORM_LC #(.LUT_INIT(B_LUT2)) b_lut (.I0(B[0]), .I1(B[2]), .I2(LO), .I3(B[3]), .O(Y));
      end
      else if (_TECHMAP_CONNMAP_B_[_TECHMAP_BITS_CONNMAP_*2 +: _TECHMAP_BITS_CONNMAP_] == _TECHMAP_CONNMAP_X_) begin
        // Already at I2
        ICESTORM_LC #(.LUT_INIT(B_LUT)) b_lut (.I0(B[0]), .I1(B[1]), .I2(LO), .I3(B[3]), .O(Y));
      end
      else if (_TECHMAP_CONNMAP_B_[_TECHMAP_BITS_CONNMAP_*3 +: _TECHMAP_BITS_CONNMAP_] == _TECHMAP_CONNMAP_X_) begin
        // Swap I3 and I2
        localparam [15:0] B_LUT2 = { B_LUT[15], B_LUT[7], B_LUT[13], B_LUT[5], B_LUT[11], B_LUT[3], B_LUT[9], B_LUT[1],
          B_LUT[14], B_LUT[6], B_LUT[12], B_LUT[4], B_LUT[10], B_LUT[2], B_LUT[8], B_LUT[0] };
        ICESTORM_LC #(.LUT_INIT(B_LUT2)) b_lut (.I0(B[0]), .I1(B[1]), .I2(LO), .I3(B[2]), .O(Y));
      end
      else
        wire _TECHMAP_FAIL_ = 1;
    end
    else
      wire _TECHMAP_FAIL_ = 1;
  endgenerate
endmodule
