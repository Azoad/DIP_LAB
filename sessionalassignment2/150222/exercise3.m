I = imread('E:\Third Year\3 2\DIP\DIP LAB\sessionalassignment2\spine.jpg');
I = rgb2gray(I);
I2 = histeq(I);
figure;
subplot(1,3,1),imshow(I),title('Original');
%normal hiseq
subplot(1,3,2),imshow(I2),title('HE');
%adapthisteq
A = adapthisteq(I);
subplot(1,3,3),imshow(A),title('CLHE');