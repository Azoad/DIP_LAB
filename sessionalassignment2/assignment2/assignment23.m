% Read the RGB image
I = imread('img/spine.jpg');

% Plot the initial images
subplot(1, 3, 1), subimage(I), title('Original Image')
hold on

% Average to get monocolor form
I = mean(I, 3);
% Range the values [0, 1]
I = mat2gray(I);

% Histogram Equalization
Ihist = histeq(I);

subplot(1, 3, 2), subimage(Ihist), title('Histogram Equalized')
hold on

% Contrast Limited Histogram Equalization
% with 16 x 16 tiles
Iclhe = adapthisteq(I, 'NumTiles', [16, 16]);
subplot(1, 3, 3), subimage(Iclhe), title('CLH Equalized')
hold off
