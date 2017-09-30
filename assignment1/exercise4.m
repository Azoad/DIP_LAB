% reading the rgb image
I = imread('exercise4.jpg');
% displayiing the rgb image
subplot(2,3,1),imshow(I),title('Original');
% converting rgb to hsv
HSV = rgb2hsv(I);
% displaying the hsv image
subplot(2,3,4),imshow(HSV),title('HSV');
% rotation of hue
Hue = HSV(:,:,1)*360;
HSV(:,:,1) = mod(Hue+120,360)/360;
I120 = hsv2rgb(HSV);
subplot(2,3,2),imshow(I120),title('HSV 120');
HSV(:,:,1) = mod(Hue-120,360)/360;
In120 = hsv2rgb(HSV);
subplot(2,3,3),imshow(In120),title('HSV -120');

% gaining the rotation effect of hue from rgb components
[h, w, d] = size(I);
RGB120 = uint8(zeros(h, w, d));
RGB120(:, :, 1) = I(:, :, 3);
RGB120(:, :, 2) = I(:, :, 1);
RGB120(:, :, 3) = I(:, :, 2);
subplot(2,3,5),imshow(RGB120),title('RGB 120'); 

RGBn120 = uint8(zeros(h, w, d));
RGBn120(:, :, 1) = I(:, :, 2);
RGBn120(:, :, 2) = I(:, :, 3);
RGBn120(:, :, 3) = I(:, :, 1);
subplot(2,3,6),imshow(RGBn120),title('RGB -120');