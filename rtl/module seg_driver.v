module seg_driver (
    input  wire       lap_enable,

    input  wire [3:0] m10,
    input  wire [3:0] m1,
    input  wire [3:0] s10,
    input  wire [3:0] s1,
    input  wire [3:0] ms10,
    input  wire [3:0] ms1,

    input  wire [3:0] lap_m10,
    input  wire [3:0] lap_m1,
    input  wire [3:0] lap_s10,
    input  wire [3:0] lap_s1,
    input  wire [3:0] lap_ms10,
    input  wire [3:0] lap_ms1,

    output reg  [6:0] seg_m10 = 7'b1111111,
    output reg  [6:0] seg_m1  = 7'b1111111,
    output reg  [6:0] seg_s10 = 7'b1111111,
    output reg  [6:0] seg_s1  = 7'b1111111,
    output reg  [6:0] seg_ms10= 7'b1111111,
    output reg  [6:0] seg_ms1 = 7'b1111111
);

    always @(*) begin
        if (lap_enable == 1'b1) begin

            case (lap_m10)
                4'd0: seg_m10 = 7'b1111110;
                4'd1: seg_m10 = 7'b0110000;
                4'd2: seg_m10 = 7'b1101101;
                4'd3: seg_m10 = 7'b1111001;
                4'd4: seg_m10 = 7'b0110011;
                4'd5: seg_m10 = 7'b1011011;
                4'd6: seg_m10 = 7'b1011111;
                4'd7: seg_m10 = 7'b1110000;
                4'd8: seg_m10 = 7'b1111111;
                4'd9: seg_m10 = 7'b1111011;
                default: seg_m10 = 7'b1111111;
            endcase

            case (lap_m1)
                4'd0: seg_m1 = 7'b1111110;
                4'd1: seg_m1 = 7'b0110000;
                4'd2: seg_m1 = 7'b1101101;
                4'd3: seg_m1 = 7'b1111001;
                4'd4: seg_m1 = 7'b0110011;
                4'd5: seg_m1 = 7'b1011011;
                4'd6: seg_m1 = 7'b1011111;
                4'd7: seg_m1 = 7'b1110000;
                4'd8: seg_m1 = 7'b1111111;
                4'd9: seg_m1 = 7'b1111011;
                default: seg_m1 = 7'b1111111;
            endcase

            case (lap_s10)
                4'd0: seg_s10 = 7'b1111110;
                4'd1: seg_s10 = 7'b0110000;
                4'd2: seg_s10 = 7'b1101101;
                4'd3: seg_s10 = 7'b1111001;
                4'd4: seg_s10 = 7'b0110011;
                4'd5: seg_s10 = 7'b1011011;
                4'd6: seg_s10 = 7'b1011111;
                4'd7: seg_s10 = 7'b1110000;
                4'd8: seg_s10 = 7'b1111111;
                4'd9: seg_s10 = 7'b1111011;
                default: seg_s10 = 7'b1111111;
            endcase

            case (lap_s1)
                4'd0: seg_s1 = 7'b1111110;
                4'd1: seg_s1 = 7'b0110000;
                4'd2: seg_s1 = 7'b1101101;
                4'd3: seg_s1 = 7'b1111001;
                4'd4: seg_s1 = 7'b0110011;
                4'd5: seg_s1 = 7'b1011011;
                4'd6: seg_s1 = 7'b1011111;
                4'd7: seg_s1 = 7'b1110000;
                4'd8: seg_s1 = 7'b1111111;
                4'd9: seg_s1 = 7'b1111011;
                default: seg_s1 = 7'b1111111;
            endcase

            case (lap_ms10)
                4'd0: seg_ms10 = 7'b1111110;
                4'd1: seg_ms10 = 7'b0110000;
                4'd2: seg_ms10 = 7'b1101101;
                4'd3: seg_ms10 = 7'b1111001;
                4'd4: seg_ms10 = 7'b0110011;
                4'd5: seg_ms10 = 7'b1011011;
                4'd6: seg_ms10 = 7'b1011111;
                4'd7: seg_ms10 = 7'b1110000;
                4'd8: seg_ms10 = 7'b1111111;
                4'd9: seg_ms10 = 7'b1111011;
                default: seg_ms10 = 7'b1111111;
            endcase

            case (lap_ms1)
                4'd0: seg_ms1 = 7'b1111110;
                4'd1: seg_ms1 = 7'b0110000;
                4'd2: seg_ms1 = 7'b1101101;
                4'd3: seg_ms1 = 7'b1111001;
                4'd4: seg_ms1 = 7'b0110011;
                4'd5: seg_ms1 = 7'b1011011;
                4'd6: seg_ms1 = 7'b1011111;
                4'd7: seg_ms1 = 7'b1110000;
                4'd8: seg_ms1 = 7'b1111111;
                4'd9: seg_ms1 = 7'b1111011;
                default: seg_ms1 = 7'b1111111;
            endcase

        end else begin

            case (m10)
                4'd0: seg_m10 = 7'b1111110;
                4'd1: seg_m10 = 7'b0110000;
                4'd2: seg_m10 = 7'b1101101;
                4'd3: seg_m10 = 7'b1111001;
                4'd4: seg_m10 = 7'b0110011;
                4'd5: seg_m10 = 7'b1011011;
                4'd6: seg_m10 = 7'b1011111;
                4'd7: seg_m10 = 7'b1110000;
                4'd8: seg_m10 = 7'b1111111;
                4'd9: seg_m10 = 7'b1111011;
                default: seg_m10 = 7'b1111111;
            endcase

            case (m1)
                4'd0: seg_m1 = 7'b1111110;
                4'd1: seg_m1 = 7'b0110000;
                4'd2: seg_m1 = 7'b1101101;
                4'd3: seg_m1 = 7'b1111001;
                4'd4: seg_m1 = 7'b0110011;
                4'd5: seg_m1 = 7'b1011011;
                4'd6: seg_m1 = 7'b1011111;
                4'd7: seg_m1 = 7'b1110000;
                4'd8: seg_m1 = 7'b1111111;
                4'd9: seg_m1 = 7'b1111011;
                default: seg_m1 = 7'b1111111;
            endcase

            case (s10)
                4'd0: seg_s10 = 7'b1111110;
                4'd1: seg_s10 = 7'b0110000;
                4'd2: seg_s10 = 7'b1101101;
                4'd3: seg_s10 = 7'b1111001;
                4'd4: seg_s10 = 7'b0110011;
                4'd5: seg_s10 = 7'b1011011;
                4'd6: seg_s10 = 7'b1011111;
                4'd7: seg_s10 = 7'b1110000;
                4'd8: seg_s10 = 7'b1111111;
                4'd9: seg_s10 = 7'b1111011;
                default: seg_s10 = 7'b1111111;
            endcase

            case (s1)
                4'd0: seg_s1 = 7'b1111110;
                4'd1: seg_s1 = 7'b0110000;
                4'd2: seg_s1 = 7'b1101101;
                4'd3: seg_s1 = 7'b1111001;
                4'd4: seg_s1 = 7'b0110011;
                4'd5: seg_s1 = 7'b1011011;
                4'd6: seg_s1 = 7'b1011111;
                4'd7: seg_s1 = 7'b1110000;
                4'd8: seg_s1 = 7'b1111111;
                4'd9: seg_s1 = 7'b1111011;
                default: seg_s1 = 7'b1111111;
            endcase

            case (ms10)
                4'd0: seg_ms10 = 7'b1111110;
                4'd1: seg_ms10 = 7'b0110000;
                4'd2: seg_ms10 = 7'b1101101;
                4'd3: seg_ms10 = 7'b1111001;
                4'd4: seg_ms10 = 7'b0110011;
                4'd5: seg_ms10 = 7'b1011011;
                4'd6: seg_ms10 = 7'b1011111;
                4'd7: seg_ms10 = 7'b1110000;
                4'd8: seg_ms10 = 7'b1111111;
                4'd9: seg_ms10 = 7'b1111011;
                default: seg_ms10 = 7'b1111111;
            endcase

            case (ms1)
                4'd0: seg_ms1 = 7'b1111110;
                4'd1: seg_ms1 = 7'b0110000;
                4'd2: seg_ms1 = 7'b1101101;
                4'd3: seg_ms1 = 7'b1111001;
                4'd4: seg_ms1 = 7'b0110011;
                4'd5: seg_ms1 = 7'b1011011;
                4'd6: seg_ms1 = 7'b1011111;
                4'd7: seg_ms1 = 7'b1110000;
                4'd8: seg_ms1 = 7'b1111111;
                4'd9: seg_ms1 = 7'b1111011;
                default: seg_ms1 = 7'b1111111;
            endcase
        end
    end

endmodule
