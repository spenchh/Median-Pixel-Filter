import pixel_pkg::*;

module median_filter #(
  parameter int IMAGE_LEN    = 1080,
  parameter int IMAGE_HEIGHT = 720
) (
  input  logic   clk,
  input  logic   rst,             // synchronous reset high
  input  logic   start_i,         // starting a new frame
  input  logic   pixel_valid_i,   // incoming pixel
  input  pixel_t pixel_i,

  output logic   done_o,          // filtered the whole image
  output logic   pixel_valid_o,   // output pixel is valid
  output pixel_t pixel_o          // output pixel
);

endmodule
