% Reading the previous image as it was saved at workspace
I = fopen('E:\Third Year\3 2\DIP\DIP LAB\assignment\crossroad.dat');
I = fread(I,[580 435],'*uint8');
I = imrotate(I,270);
figure; 
subplot(2,3,1),imshow(I),title('crossroad');
%
I5 = (I./25);
subplot(2,3,2),imshow(mat2gray(I5));