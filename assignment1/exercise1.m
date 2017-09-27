% importing the .dat file
I = fopen('crossroad.dat');
% converting the .dat file to matlab readable image format
I = fread(I,[580,435]);
% rotating the image to get a nice view
I = imrotate(I,270);
%converting the image into uint8 format
I = uint8(I);
% displaying the image
subplot(2,3,1),imshow(I),title('crossroad'); 
% Changing the image resolution sizes with 2,4,8,16 boxes
w = floor(580/2);
h = floor(435/2);
I2 = imresize(I,[h w]);
subplot(2,3,2),imshow(I2),title('box size 2');
w = floor(580/4);
h = floor(435/4);
I4 = imresize(I,[h w]);
subplot(2,3,3),imshow(I4),title('box size 4');
w = floor(580/8);
h = floor(435/8);
I8 = imresize(I,[h w]);
subplot(2,3,5),imshow(I8),title('box size 8');
w = floor(580/16);
h = floor(435/16);
I16 = imresize(I,[h w]);
subplot(2,3,6),imshow(I16),title('box size 16');
% Displaying the obvious structure
figure;
subplot(2,3,1), plot(I), title('crossroad');
subplot(2,3,2), plot(I2), title('box size 2');
subplot(2,3,3), plot(I4), title('box size 4');
subplot(2,3,5), plot(I8), title('box size 8');
subplot(2,3,6), plot(I16), title('box size 16');
