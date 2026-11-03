module timer (
    input  wire dCLK,
    input  wire timer_enable,
    input  wire timer_reset,
    input  wire timer_lap,
    output reg [3:0] m10  = 4'b0000,
    output reg [3:0] m1   = 4'b0000,
    output reg [3:0] s10  = 4'b0000,
    output reg [3:0] s1   = 4'b0000,
    output reg [3:0] ms10 = 4'b0000,
    output reg [3:0] ms1  = 4'b0000
);

always @(posedge dCLK) begin
    if (timer_reset) begin
        m10  <= 4'b0000;
        m1   <= 4'b0000;
        s10  <= 4'b0000;
        s1   <= 4'b0000;
        ms10 <= 4'b0000;
        ms1  <= 4'b0000;
    end
    else if (timer_enable) begin
	 if (ms1 == 4'b1001)
            ms1 <= 4'b0000;
        else
            ms1 <= ms1 + 4'b0001;
        if (ms1 == 4'b1001) begin
            if (ms10 == 4'b1001)
                ms10 <= 4'b0000;
            else
                ms10 <= ms10 + 4'b0001;
        end
		  if (ms1 == 4'b1001 && ms10 == 4'b1001) begin
            if (s1 == 4'b1001)
                s1 <= 4'b0000;
            else
                s1 <= s1 + 4'b0001;
        end
		  if (ms1 == 4'b1001 && ms10 == 4'b1001 && s1 == 4'b1001) begin
            if (s10 == 4'b0101)
                s10 <= 4'b0000;
            else
                s10 <= s10 + 4'b0001;
        end
		  if (ms1 == 4'b1001 && ms10 == 4'b1001 && s1 == 4'b1001 && s10 == 4'b0101) begin
            if (m1 == 4'b1001)
                m1 <= 4'b0000;
            else
                m1 <= m1 + 4'b0001;
        end
		  if (ms1 == 4'b1001 && ms10 == 4'b1001 && s1 == 4'b1001 &&
            s10 == 4'b0101 && m1 == 4'b1001) begin

            if (m10 == 4'b1001)
                m10 <= 4'b0000;
            else
                m10 <= m10 + 4'b0001;
        end
    end
end

endmodule
