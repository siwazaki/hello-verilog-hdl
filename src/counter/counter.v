module counter(CLK, RST_X, cnt);

  input RST_X, CLK;
  output reg [3:0] cnt;
  always @(posedge CLK)  begin
    if (!RST_X)
      cnt <= 4'h0;
    else
      cnt <= cnt + 4'h1;
  end
endmodule