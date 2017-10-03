I=imread('cameraman.tif');
A=im2double(I);
image=A+(randn(size(I))/10);
IH3=directionalFilter(image,3,'Horizontal');
IV3=directionalFilter(image,3,'Vertical');
IMD3=directionalFilter(image,3,'MainDiagonal');
IOD3=directionalFilter(image,3,'OffDiagonal');

IH5=directionalFilter(image,5,'Horizontal');
IV5=directionalFilter(image,5,'Vertical');
IMD5=directionalFilter(image,5,'MainDiagonal');
IOD5=directionalFilter(image,5,'OffDiagonal');

IH7=directionalFilter(image,7,'Horizontal');
IV7=directionalFilter(image,7,'Vertical');
IMD7=directionalFilter(image,7,'MainDiagonal');
IOD7=directionalFilter(image,7,'OffDiagonal');

figure;
subplot 231;imshow(I);title('Original');
subplot 232;imshow(image);title('Noise Added');
subplot 233;imshow(IH3);title('Horizontal Filter (3x3)');
subplot 234;imshow(IV3);title('Vertical Filter (3x3)');
subplot 235;imshow(IMD3);title('Main Diagonal Filter (3x3)');
subplot 236;imshow(IOD3);title('Off Diagonal Filter (3x3)');

figure;
subplot 231;imshow(I);title('Original');
subplot 232;imshow(image);title('Noise Added');
subplot 233;imshow(IH5);title('Horizontal Filter (5x5)');
subplot 234;imshow(IV5);title('Vertical Filter (5x5)');
subplot 235;imshow(IMD5);title('Main Diagonal Filter (5x5)');
subplot 236;imshow(IOD5);title('Off Diagonal Filter (5x5)');

figure;
subplot 231;imshow(I);title('Original');
subplot 232;imshow(image);title('Noise Added');
subplot 233;imshow(IH7);title('Horizontal Filter (7x7)');
subplot 234;imshow(IV7);title('Vertical Filter (7x7)');
subplot 235;imshow(IMD7);title('Main Diagonal Filter (7x7)');
subplot 236;imshow(IOD7);title('Off Diagonal Filter (7x7)');