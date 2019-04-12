/*
 4 bit adder
 */

module adder4(in_data1,
              in_data2,
              out_data,
              cy);
    input [3:0] in_data1, in_data2;
    output [3:0] out_data;
    output cy; //1本の出力信号

    wire [4:0] rslt;
    assign rslt     = in_data1 + in_data2;
    assign cy       = rslt[4];
    assign out_data = rslt[3:0];
endmodule
