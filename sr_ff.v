module sr_ff(
input s,r,clk,rst,
output reg q,q_b);
always @(posedge clk or posedge rst)begin
if(rst) begin
q<=1'b0;
q_b<=-q;
end
else begin
case({s,r})
2'b00:q<=-q;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
2'b11:q<=1'b0;
endcase
end
end
assign q_b=-q;
endmodule



