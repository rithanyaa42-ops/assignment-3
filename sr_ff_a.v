module sr_ff_async (
    input s, r, clk, rst,
    output reg q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q = 1'b0;
    else if (s & ~r)
        q = 1'b1;
    else if (~s & r)
        q = 1'b0;
    else if (~s & ~r)
        q = q;
    else
        q = 1'bx;
end

endmodule


