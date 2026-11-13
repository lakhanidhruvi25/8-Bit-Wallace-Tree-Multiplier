module WTC_8_bit_tb;

    reg [7:0] A;
    reg [7:0] B;
    wire [15:0] P;

    WTC_8_bit DUT (.A(A),.B(B),.P(P));

    initial begin

        // Test 1: 255 × 1
        A = 8'b11111111;
        B = 8'b00000001;
        #10;
        $display("A = %b, B = %b, P = %b", A, B, P);

        // Test 2: 100× 10
        A = 8'b01100100;
        B = 8'b00001010;
        #10;
        $display("A = %b, B = %b, P = %b", A, B, P);

        // Test 3: 255 × 2
        A = 8'b11111111;
        B = 8'b00000010;
        #10;
        $display("A = %b, B = %b, P = %b", A, B, P);
        
        // Test 4: 66 × 66
        A = 8'b01000010;
        B = 8'b01000010;
        #10;
        $display("A = %b, B = %b, P = %b", A, B, P);
        
        // Test 5: 200 × 155
        A = 8'b11001000;
        B = 8'b10011011;
        #10;
        $display("A = %b, B = %b, P = %b", A, B, P);
        
        #10;
        $finish;
    end
endmodule