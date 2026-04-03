module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    wire [7:0]cmp1, cmp2, cmp3;
    assign cmp1 = (a < b)? a : b;
    assign cmp2 = (cmp1 < c)? cmp1 : c;
    assign cmp3 = (cmp2 < d)? cmp2 : d;
    assign min = cmp3;

endmodule
