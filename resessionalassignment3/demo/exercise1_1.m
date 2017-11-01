I = imread('cameraman.tif');
Im = im2double(I);
In = Im + (randn(size(I))/10);
subplot(2,2,1),imshow(In),title('Random noise');
In3 = medfilt2(In,[3 3]);
subplot(2,2,2),imshow(In3),title('dimension 3');
In5 = medfilt2(In,[5 5]);
subplot(2,2,3),imshow(In5),title('dimension 5');
In7 = medfilt2(In,[7 7]);
subplot(2,2,4),imshow(In7),title('dimension 7');

% old 
% reading the image
I = imread('cameraman.tif');
% displaying the image
subplot(2,3,1),imshow(I),title('Original');
% given convolution kernel
A = [0 0 0;1 1 1;0 0 0]/3;
B = [1 0 0;0 1 0;0 0 1]/3;
% filtering the image and displaying it
InA = filter2(A,I);
subplot(2,3,2),imshow(InA),title('A');
InB = filter2(B,I);
subplot(2,3,3),imshow(InB/256),title('B');
InAr = filter2(rot90(A),I);
subplot(2,3,5),imshow(InAr/256),title('Ar');
InBr = filter2(rot90(B),I);
subplot(2,3,6),imshow(InBr/256),title('Br');
figure;
% applying noise
Im = im2double(I);
In = Im + (randn(size(I))/10);
subplot(2,3,1),imshow(In),title('Randn');
% using directional filter on new image
InnA = filter2(A,In);
subplot(2,3,2),imshow(InnA),title('A');
InnB = filter2(B,In);
subplot(2,3,3),imshow(InnB),title('B');
InnAr = filter2(rot90(A),In);
subplot(2,3,5),imshow(InnAr),title('Ar');
InnBr = filter2(rot90(B),In);
subplot(2,3,6),imshow(InnBr),title('Br');