module jk_ff_async (
    input j, k, clk, rst,
    output reg q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q = 1'b0;
    else if (j & ~k)
        q = 1'b1;
    else if (~j & k)
        q = 1'b0;
    else if (j & k)
        q = ~q;
    else
        q = q;
end

endmodule


