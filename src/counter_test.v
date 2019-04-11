module top();
  reg CLK, RST_X;
  wire [3:0] w_cnt;
  counter counter_instance(CLK, RST_X, w_cnt);

  initial begin
    CLK = 0;
    forever #10 CLK = ~CLK;
  end

  initial begin
    RST_X = 0;
    #30 RST_X = 1;
  end

  initial begin
    #500 $finish();
  end

  always @(posedge CLK) begin
    $write("[%t] counter: %b\n", $time, w_cnt);
  end

  initial begin
      $dumpfile("counter_test.vcd");
      $dumpvars(0, counter_instance);
  end
endmodule