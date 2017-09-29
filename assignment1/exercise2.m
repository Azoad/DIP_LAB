% importing the .dat file
I = fopen('crossroad.dat');
% converting the .dat file to matlab readable image format
I = fread(I,[580,435]);
% rotating the image to get a nice view
I = imrotate(I,270);
% displaying the image
subplot(2,3,1),imshow(mat2gray(I)),title('crossroad'); 
% applying 5 bit data for each pixel
I5 = floor(I/8);
subplot(2,3,2),imshow(mat2gray(I5)),title('5 bit');
% applying 4 bit data for each pixel
I4 = floor(I/16);
subplot(2,3,3),imshow(mat2gray(I4)),title('4 bit');
% applying 3 bit data for each pixel
I3 = floor(I/32);
subplot(2,3,4),imshow(mat2gray(I3)),title('3 bit');
% applying 2 bit data for each pixel
I2 = floor(I/64);
subplot(2,3,5),imshow(mat2gray(I2)),title('2 bit');
% applying 1 bit data for each pixel
I1 = floor(I/128);
subplot(2,3,6),imshow(mat2gray(I1)),title('1 bit');