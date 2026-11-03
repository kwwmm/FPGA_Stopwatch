module led_driver (
    input wire dCLK,
    input wire timer_enable,
    input wire lap_active,
    input wire timer_reset,
    output reg [7:0] led = 8'b0000_0000
);

    reg [6:0] cnt = 7'd0;

    always @(posedge dCLK) begin
        if(timer_reset)begin
		  cnt<=0;
		  led <= 8'b0000_0000;
		  end
		  else if (timer_enable == 1'b1) begin
		  if(lap_active == 1'b1) begin
		  if(cnt==7'd9) begin
		  cnt <= 0;
		  led[7:4] <= 4'b0000;
	  led[3:0] <= ~led[3:0];
	  end else begin
	  cnt <= cnt +1;
	  end
	  end
	  else begin
	  if (cnt == 7'd49) begin
	  cnt <= 0;
	 if (led == 8'b00001111) begin
        led <= 8'b00000000; end
    else begin
        led <= ~led; end
  end else begin 
  cnt <= cnt +1;
  end
  end
  end
  end

endmodule
