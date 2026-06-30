# Median Pixel Filter

## Project Goal
The median pixel filter applies a 2x2 kernel kernel to an image of IMAGE_LEN and IMAGE_HEIGHT. Since a 2x2 kernel covers an even number of pixels (4 total), there is no single middle number. The function typically calculates the median by sorting the 4 pixel values and taking the average of the two middle values. This is done for each of the 3 pixel channels (red, green, blue) separately. The resulting median pixel channels should then be combined back into a pixel output.  

Build your module assuming a streaming design, where pixels are given starting from the top left corner, moving left -> right. When you hit the right edge, the next incoming pixel is the left most edge of the row below.

<img width="912" height="432" alt="image" src="https://github.com/user-attachments/assets/b410afd0-ccfd-409a-aec4-1458d916d605" />

## Input Pixel Stream
The convolution will start in the top left corner of the image. It then moves one pixel to the right until it reaches the right edge of the image. The filter will then drop down a row and move all the way to the left edge. This will continue until the filter passes over every pixel in the image. 

## 2x2 Window
Current pixel
Same row, previous pixel
previous row, same column
Previous row, previous column

## Output Size
2x2

## Module Interface
Your module should have the following header: 
module median_filter #( 
 parameter int IMAGE_LEN       = 1080, 
 parameter int IMAGE_HEIGHT = 720 
) ( 
 input logic clk, 
 input logic rst, 		   // synchronous reset high
 input logic start_i, 	   // starting a new frame
 input  logic pixel_valid_i,  // incoming pixel
 input  pixel_t pixel_i,
 output logic done_o, 		//we’ve filtered the whole image
       output  logic pixel_valid_o,         //output pixel is valid
       output  pixel_t pixel_o 		// output pixel
); 

## Expected Behavior

## Deliverables

## Style Requirements
