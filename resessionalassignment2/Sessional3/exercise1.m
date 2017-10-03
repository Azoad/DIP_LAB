% reading the image
I = imread('cameraman.tif');
% taking the dimension from user
D = input('Enter the dimension of the filter : ');
% displaying the original image
figure;
subplot(2,3,1),imshow(I),title('Original');
% using vertical filter function and displaying image
Ih = dirfilt(I,D);
subplot(2,3,2),imshow(Ih),title('Horizontal');
% using horizontal filter function and displaying the image
Iv = dirfilt2(I,D);
subplot(2,3,3),imshow(Iv),title('Vertical');
% diagonal filtering by taking a diagonal matrix using eye() to generate
% matrix
Id = imfilter(I,(eye(D)/D));
subplot(2,3,5),imshow(Id),title('Diagonal');
% same as above but rotating it by 90 degrees
Iod = imfilter(I,rot90(eye(D)/D));
subplot(2,3,6),imshow(Iod),title('Off-Diagonal');

% adding noise scaled by 10
In = im2double(I) + (randn(size(I))/10);

% showing for dimension 3

figure;
subplot(2,3,1),imshow(I),title('Original');
subplot(2,3,2),imshow(In),title('Noisy');
subplot(2,3,3),imshow(dirfilt(In,3)),title('Vertical 3x3');
subplot(2,3,4),imshow(dirfilt2(In,3)),title('Horizontal 3x3');
subplot(2,3,5),imshow(imfilter(In,(eye(3)/3))),title('Diagonal 3x3');
subplot(2,3,6),imshow(imfilter(In,rot90(eye(3)/3))),title('Off-Diagonal 3x3');

% showing for dimension 5
figure;
subplot(2,3,1),imshow(I),title('Original');
subplot(2,3,2),imshow(In),title('Noisy');
subplot(2,3,3),imshow(dirfilt(In,5)),title('Vertical 5x5');
subplot(2,3,4),imshow(dirfilt2(In,5)),title('Horizontal 5x5');
subplot(2,3,5),imshow(imfilter(In,(eye(5)/5))),title('Diagonal 5x5');
subplot(2,3,6),imshow(imfilter(In,rot90(eye(5)/5))),title('Off-Diagonal 5x5');

% showing for dimension 5
figure;
subplot(2,3,1),imshow(I),title('Original');
subplot(2,3,2),imshow(In),title('Noisy');
subplot(2,3,3),imshow(dirfilt(In,7)),title('Vertical 7x7');
subplot(2,3,4),imshow(dirfilt2(In,7)),title('Horizontal 7x7');
subplot(2,3,5),imshow(imfilter(In,(eye(7)/7))),title('Diagonal 7x7');
subplot(2,3,6),imshow(imfilter(In,rot90(eye(7)/7))),title('Off-Diagonal 7x7');