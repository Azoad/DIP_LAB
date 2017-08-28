I = imread('E:\Third Year\3 2\DIP\DIP LAB\sessionalassignment2\spine.jpg');
I = rgb2gray(I);
I2 = histeq(I);
subplot(2,2,1),imshow(I);
subplot(2,2,2),imhist(I);
subplot(2,2,3),imshow(I2);
subplot(2,2,4),imhist(I2);
figure;
A = adapthisteq(I);
subplot(2,3,1),imshow(A),title('A'),subplot(2,3,4),imhist(A),title('A');
A = adapthisteq(I,'Numtiles',[16 16]);
subplot(2,3,2),imshow(A),title('B'),subplot(2,3,5),imhist(A),title('B');
A = adapthisteq(I,'Numtiles',[4 8]);
subplot(2,3,3),imshow(A),subplot(2,3,6),imhist(A);