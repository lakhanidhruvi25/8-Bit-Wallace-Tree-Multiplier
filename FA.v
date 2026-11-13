module FA(a,b,cin,sum,c);

input a,b,cin;
output sum,c;

assign sum = a^b^cin;
assign c = (a&b)|(b&cin)|(a&cin);

endmodule
