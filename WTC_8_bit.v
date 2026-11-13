module WTC_8_bit ( input [7:0] A, input [7:0] B, output [15:0] P);

reg pp [0:7][0:7];
integer i,j;
always @(*) begin
    for (i = 0; i < 8; i = i + 1) begin
        for (j = 0; j < 8; j = j + 1) begin
            pp[i][j] = A[i] & B[j];
        end
    end
end


wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16;
wire s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32;
wire s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48;
wire s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64;

wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16;
wire c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32;
wire c33,c34,c35,c36,c37,c38,c39,c40,c41,c42,c43,c44,c45,c46,c47,c48;
wire c49,c50,c51,c52,c53,c54,c55,c56,c57,c58,c59,c60,c61,c62,c63,c64;

HA HA1 ( .a(pp[0][1]), .b(pp[1][0]), .sum(s1), .c(c1) );
FA FA2 ( .a(pp[0][2]), .b(pp[1][1]), .cin(pp[2][0]), .sum(s2), .c(c2) );
FA FA3 ( .a(pp[0][3]), .b(pp[1][2]), .cin(pp[2][1]), .sum(s3), .c(c3) );
FA FA4 ( .a(pp[0][4]), .b(pp[1][3]), .cin(pp[2][2]), .sum(s4), .c(c4) );
FA FA5 ( .a(pp[0][5]), .b(pp[1][4]), .cin(pp[2][3]), .sum(s5), .c(c5) );
FA FA6 ( .a(pp[0][6]), .b(pp[1][5]), .cin(pp[2][4]), .sum(s6), .c(c6) );
FA FA7 ( .a(pp[0][7]), .b(pp[1][6]), .cin(pp[2][5]), .sum(s7), .c(c7) );
HA HA8 ( .a(pp[1][7]), .b(pp[2][6]), .sum(s8), .c(c8) );
HA HA9 ( .a(pp[3][1]), .b(pp[4][0]), .sum(s9), .c(c9) ); 
FA FA10 ( .a(pp[3][2]), .b(pp[4][1]), .cin(pp[5][0]), .sum(s10), .c(c10) ); 
FA FA11 ( .a(pp[3][3]), .b(pp[4][2]), .cin(pp[5][1]), .sum(s11), .c(c11) ); 
FA FA12 ( .a(pp[3][4]), .b(pp[4][3]), .cin(pp[5][2]), .sum(s12), .c(c12) ); 
FA FA13 ( .a(pp[3][5]), .b(pp[4][4]), .cin(pp[5][3]), .sum(s13), .c(c13) ); 
FA FA14 ( .a(pp[3][6]), .b(pp[4][5]), .cin(pp[5][4]), .sum(s14), .c(c14) ); 
FA FA15 ( .a(pp[3][7]), .b(pp[4][6]), .cin(pp[5][5]), .sum(s15), .c(c15) ); 
HA HA16 ( .a(pp[4][7]), .b(pp[5][6]), .sum(s16), .c(c16) ); 
HA HA17 ( .a(s2), .b(c1), .sum(s17), .c(c17) ); 
FA FA18 ( .a(s3), .b(c2), .cin(pp[3][0]), .sum(s18), .c(c18) ); 
FA FA19 ( .a(s4), .b(c3), .cin(s9), .sum(s19), .c(c19) ); 
FA FA20 ( .a(s5), .b(c4), .cin(s10), .sum(s20), .c(c20) ); 
FA FA21 ( .a(s6), .b(c5), .cin(s11), .sum(s21), .c(c21) ); 
FA FA22 ( .a(s7), .b(c6), .cin(s12), .sum(s22), .c(c22) ); 
FA FA23 ( .a(s8), .b(c7), .cin(s13), .sum(s23), .c(c23) ); 
FA FA24 ( .a(pp[2][7]), .b(c8), .cin(s14), .sum(s24), .c(c24) ); 
HA HA25 ( .a(c10), .b(pp[6][0]), .sum(s25), .c(c25) ); 
FA FA26 ( .a(c11), .b(pp[6][1]), .cin(pp[7][0]), .sum(s26), .c(c26) ); 
FA FA27 ( .a(c12), .b(pp[6][2]), .cin(pp[7][1]), .sum(s27), .c(c27) ); 
FA FA28 ( .a(c13), .b(pp[6][3]), .cin(pp[7][2]), .sum(s28), .c(c28) );
FA FA29 ( .a(c14), .b(pp[6][4]), .cin(pp[7][3]), .sum(s29), .c(c29) ); 
FA FA30 ( .a(c15), .b(pp[6][5]), .cin(pp[7][4]), .sum(s30), .c(c30) ); 
FA FA31 ( .a(c16), .b(pp[6][6]), .cin(pp[7][5]), .sum(s31), .c(c31) );
HA HA32 ( .a(pp[6][7]), .b(pp[7][6]), .sum(s32), .c(c32) );
HA HA33 ( .a(s18), .b(c17), .sum(s33), .c(c33) ); 
HA HA34 ( .a(s19), .b(c18), .sum(s34), .c(c34) );
FA FA35 ( .a(s20), .b(c19), .cin(c9), .sum(s35), .c(c35) ); 
FA FA36 ( .a(s21), .b(c20), .cin(s25), .sum(s36), .c(c36) ); 
FA FA37 ( .a(s22), .b(c21), .cin(s26), .sum(s37), .c(c37) ); 
FA FA38 ( .a(s23), .b(c22), .cin(s27), .sum(s38), .c(c38) ); 
FA FA39 ( .a(s24), .b(c23), .cin(s28), .sum(s39), .c(c39) ); 
FA FA40 ( .a(s15), .b(c25), .cin(s29), .sum(s40), .c(c40) ); 
HA HA41 ( .a(s16), .b(s30), .sum(s41), .c(c41) ); 
HA HA42 ( .a(pp[5][7]), .b(s31), .sum(s42), .c(c42) ); 
HA HA43 ( .a(s34), .b(c33), .sum(s43), .c(c43) ); 
HA HA44 ( .a(s35), .b(c34), .sum(s44), .c(c44) ); 
HA HA45 ( .a(s36), .b(c35), .sum(s45), .c(c45) ); 
FA FA46 ( .a(s37), .b(c36), .cin(c25), .sum(s46), .c(c46) ); 
FA FA47 ( .a(s38), .b(c37), .cin(c26), .sum(s47), .c(c47) ); 
FA FA48 ( .a(s39), .b(c38), .cin(c27), .sum(s48), .c(c48) ); 
FA FA49 ( .a(s40), .b(c39), .cin(c28), .sum(s49), .c(c49) ); 
FA FA50 ( .a(s41), .b(c38), .cin(c29), .sum(s50), .c(c50) ); 
FA FA51 ( .a(s42), .b(c39), .cin(c30), .sum(s51), .c(c51) ); 
FA FA52 ( .a(s32), .b(c40), .cin(c31), .sum(s52), .c(c52) ); 
HA HA53 ( .a(pp[7][7]), .b(c32), .sum(s53), .c(c53) ); 
HA HA54 ( .a(s44), .b(c43), .sum(s54), .c(c54) );
HA HA55 ( .a(s45), .b(c44), .sum(s55), .c(c55) );
HA HA56 ( .a(s46), .b(c45), .sum(s56), .c(c56) );
HA HA57 ( .a(s47), .b(c46), .sum(s57), .c(c57) );
HA HA58 ( .a(s48), .b(c47), .sum(s58), .c(c58) );
HA HA59 ( .a(s49), .b(c48), .sum(s59), .c(c59) );
HA HA60 ( .a(s50), .b(c49), .sum(s60), .c(c60) );
HA HA61 ( .a(s51), .b(c50), .sum(s61), .c(c61) );
HA HA62 ( .a(s52), .b(c51), .sum(s62), .c(c62) );
HA HA63 ( .a(s53), .b(c52), .sum(s63), .c(c63) );
HA HA64 ( .a(c53), .b(c63), .sum(s64), .c(c64) );

assign P[15:0] = {s64,s63,s62,s61,s60,s59,s58,s57,s56,s55,s54,s43,s33,s17,s1,pp[0][0]};

endmodule


