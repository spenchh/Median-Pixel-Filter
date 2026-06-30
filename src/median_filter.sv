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

  localparam init COL_COUNT_W = $clog2(IMAGE_LEN);
  localparam init ROW_COUNT_W = $clog2(IMAGE_HEIGHT);

  logic [COL_COUNT_W-1:0] col_count_d, col_count_q;
  logic [ROW_COUNT_W-1:0] row_count_d, row_count_q;

  // Stores previuos row of pixels
  pixel_t line_buffer_q [IMAGE_LEN];

  // Stores previous pixel from current row
  pixel_t current_row_prev_pixel_d, current_row_prev_pixel_q;

  pixel_t pixel_d, pixel_q;
  logic pixel_valid_d, pixel_valid_q;
  logic done_d, done_q;

  logic window_valid

  assign pixel_o = pixel_q;
  assign pixel_valid_o = pixeL-valid_q;
  assign done_o = done_q;

  
endmodule
