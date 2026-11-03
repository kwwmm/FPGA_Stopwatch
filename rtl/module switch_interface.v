module switch_interface (
    input  CLK,
    input  [2:0] KEY_INP,
    output reg [2:0] o_sw = 3'b000
);

reg [2:0] rKEY_INPz1 = 3'b000;
reg [2:0] rKEY_INPz2 = 3'b000;
reg [2:0] rKEY_INPz3 = 3'b000;
wire [2:0] wKEY_DET;

always @(posedge CLK)
begin
    rKEY_INPz1 <= KEY_INP;
    rKEY_INPz2 <= rKEY_INPz1;
    rKEY_INPz3 <= rKEY_INPz2;
end

assign wKEY_DET = ~rKEY_INPz3 & rKEY_INPz2;

always @(posedge CLK)
begin
    o_sw <= wKEY_DET;
end

endmodule
