module state_machine(
    input  wire       CLK,
    input  wire [2:0] o_sw,
    output reg        timer_enable = 1'b0,
    output reg        timer_reset  = 1'b0,
    output reg        timer_lap    = 1'b0,
	 output reg        lap_enable   = 1'b0,
	 output reg lap_active =1'b0
);

localparam [1:0] reset = 2'b00,
                 run   = 2'b01,
                 stop  = 2'b10,
                 lap   = 2'b11;

reg [1:0] state = reset;



always @(posedge CLK)
begin
  case (state)
    reset : begin
              if (o_sw[0] == 1'b1)
                state <= run;
              else
                state <= reset;
            end

    run   : begin
              if (o_sw[0] == 1'b1)
                state <= stop;
              else if (o_sw[2] == 1'b1)
                state <= lap;
              else
                state <= run;
            end

    stop  : begin
              if (o_sw[0] == 1'b1)
                state <= run;
              else if (o_sw[1] == 1'b1)
                state <= reset;
              else
                state <= stop;
            end

    lap   : begin
              if (o_sw[0] == 1'b1)
                state <= run;
					
					 
              else if (o_sw[2] == 1'b1)
                state <= lap;
					 
					 
              else
                state <= lap;
            end
  endcase
end

always @(*)
begin
  timer_enable = 1'b0;
  timer_reset  = 1'b0;
  timer_lap    = 1'b0;
  lap_enable   = 1'b0;
  lap_active = 1'b0;

  case (state)
    reset : begin
              timer_reset  = 1'b1;
				 
            end

    run   : begin
              timer_enable = 1'b1;
				  lap_active =1'b0;
				  if(o_sw[2]==1'b1) timer_lap=1'b1;
            end

    stop  : begin
				  timer_enable = 1'b0;
              timer_lap    = 1'b0;
            end

    lap   : begin
              timer_enable = 1'b1;
				  lap_enable   = 1'b1;
				  lap_active =1'b1;
              if(o_sw[2]==1'b1) timer_lap=1'b1;
            end
  endcase
  
end

endmodule
