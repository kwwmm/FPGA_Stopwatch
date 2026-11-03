module clk_div(
input wire CLK, //1MHz clock
output reg dCLK=1'b0 //dived clock
);
reg [19:0] rCnt = 20'h0_0000; //20bits count register 100Hz
always @(posedge CLK)
begin
	if(rCnt[19:0]>= 4999) //rCnt=5000-->CLK=0
	begin
	rCnt[19:0]<=20'h0_0000;
	dCLK<=~dCLK; //dCLK = 100Hz, 0.01s period
	end
	else
	begin
	rCnt[19:0]<=rCnt[19:0]+20'h0_0001;
	end
end
endmodule
