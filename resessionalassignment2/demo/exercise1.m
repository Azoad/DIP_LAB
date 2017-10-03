% reading the image
I = imread('cameraman.tif');
% displaying the image
subplot(2,3,1),imshow(I),title('Original');
% given convolution kernel
A = [0 0 0;1 1 1;0 0 0]/3;
B = [1 0 0;0 1 0;0 0 1]/3;
% filtering the image and displaying it
InA = imfilter(I,A);
subplot(2,3,2),imshow(InA),title('A');
InB = imfilter(I,B);
subplot(2,3,3),imshow(InB),title('B');
InAr = imfilter(I,rot90(A));
subplot(2,3,5),imshow(InAr),title('Ar');
InBr = imfilter(I,rot90(B));
subplot(2,3,6),imshow(InBr),title('Br');
figure;
% applying noise
Im = im2double(I);
In = Im + (randn(size(I))/10);
subplot(2,3,1),imshow(In),title('Random noise');
% using directional filter on new image
InnA = imfilter(In,A);
subplot(2,3,2),imshow(InnA),title('A');
InnB = imfilter(In,B);
subplot(2,3,3),imshow(InnB),title('B');
InnAr = imfilter(In,rot90(A));
subplot(2,3,5),imshow(InnAr),title('Ar');
InnBr = imfilter(In,rot90(B));
subplot(2,3,6),imshow(InnBr),title('Br');