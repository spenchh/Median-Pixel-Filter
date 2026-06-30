import pixel_pkg::*;

module median_filter #(
  parameter int IMAGE_LEN    = 1080,
  parameter int IMAGE_HEIGHT = 720
) (
  input  logic   clk,
  input  logic   rst,             // synchronous reset high
  input  logic   start_i,         // starting a new frame
  input  logic   pixel_valid_i,   // incoming pixel
  input  pixel_t pixel_i,         // custom pixel from pacakage.sv

  output logic   done_o,          // filtered the whole image
  output logic   pixel_valid_o,   // output pixel is valid
  output pixel_t pixel_o          // output pixel
);

  /* 
    localparam is a constant. Can't change from outside.
    Basically means COL_COUNT_W is num bits needed to count cols

    $clog2(...) - ceiling log base 2 of (...)
    How many bits do I need to count up to IMAGE_LEN?
  */ 
  
  localparam init COL_COUNT_W = $clog2(IMAGE_LEN);
  localparam init ROW_COUNT_W = $clog2(IMAGE_HEIGHT);

  /*
    col_count_q: which col we're currently on
    row_count_q: which row we're currently on
    line_buffer_q: remembers prev row
    current_row_prev_pixel_q: remembers pixel immediately to left
    previous_row_prev_pixel_q: remembers top left pixel of 2x2
    window_valid: validates if a 2x2 window exists
  */

  // Declares multi-bit signals
  logic [COL_COUNT_W-1:0] col_count_d, col_count_q; // d = next value, q = current value
  logic [ROW_COUNT_W-1:0] row_count_d, row_count_q;

  // Stores previuos row of pixels
  pixel_t line_buffer_q [IMAGE_LEN]; // array of IMAGE_LEN pixels

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
