% importing the .dat file
I = fopen('E:\Third Year\3 2\DIP\DIP LAB\assignment\crossroad.dat');
% converting the .dat file to matlab readable image format
I = fread(I,[580 435],'*uint8');
% rotating the image to get a nice view
I = imrotate(I,270);
% displaying the image
figure; 
subplot(2,3,1),imshow(I),title('crossroad'); 

% generating image with box 2 pixels
h2 = ones(2,2)/4;
I2 = imfilter(I,h2);
subplot(2,3,3),imshow(I2),title('2x2');

% generating image with box 4 pixels
h4 = ones(4,4)/16;
I4 = imfilter(I,h4);
subplot(2,3,4),imshow(I4),title('4x4');

% generating image with box 8 pixels
h8 = ones(8,8)/64;
I8 = imfilter(I,h8);
subplot(2,3,5),imshow(I8),title('8x8');

% generating image with box 16 pixels
h16 = ones(16,16)/256;
I16 = imfilter(I,h16);
subplot(2,3,6),imshow(I16),title('16x16');

% checking the structure
figure;
subplot(2,3,1),plot(I),title('crossroad');
subplot(2,3,3),plot(I2),title('2x2');
subplot(2,3,4),plot(I4),title('4x4');
subplot(2,3,5),plot(I8),title('8x8');
subplot(2,3,6),plot(I16),title('16x16');