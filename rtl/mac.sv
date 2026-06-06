`timescale 1ns/1ps

module mac #(
    parameter int DATA_WIDTH = 8,
    parameter int ACC_WIDTH  = 32
)(
    input  logic                         clk,
    input  logic                         rst_n,
    input  logic                         en,
    input  logic signed [DATA_WIDTH-1:0] a,
    input  logic signed [DATA_WIDTH-1:0] b,
    output logic signed [ACC_WIDTH-1:0]  acc_out
);

    // full multiply result
    logic signed [(2*DATA_WIDTH)-1:0] product;

    assign product = a * b;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc_out <= '0;
        end else if (en) begin
            // sign extend product
            acc_out <= acc_out + {{(ACC_WIDTH-(2*DATA_WIDTH)){product[2*DATA_WIDTH-1]}}, product};
        end
    end

endmodule