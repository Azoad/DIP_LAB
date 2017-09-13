I = imread('img/rocks.jpg');

% Plot the initial images
subplot(1, 3, 1), subimage(I), title('Original Image')
hold on

[h, w, d] = size(I);

% Histogram Equalize each color plate
RGBhist = double(zeros(h, w, d));
RGBhist(:, :, 1) = histeq(I(:, :, 1));
RGBhist(:, :, 2) = histeq(I(:, :, 2));
RGBhist(:, :, 3) = histeq(I(:, :, 3));

subplot(1, 3, 2), subimage(uint8(RGBhist)), title('RGB HE Image')
hold on

% Generate histrogram for each color plate
Hgrams = double(zeros(3, 100));
[Hgrams(1, :), edge1] = histcounts(I(:, :, 1), 100);
[Hgrams(2, :), edge2] = histcounts(I(:, :, 2), 100);
[Hgram3(3, :), edge3] = histcounts(I(:, :, 3), 100);

% Generate average histogram
Hgram = mean(Hgrams, 1);

% Apply average histogram to each color plate
RGBhist2 = double(zeros(h, w, d));
RGBhist2(:, :, 1) = histeq(I(:, :, 1), Hgram);
RGBhist2(:, :, 2) = histeq(I(:, :, 2), Hgram);
RGBhist2(:, :, 3) = histeq(I(:, :, 3), Hgram);

subplot(1, 3, 3), subimage(uint8(RGBhist2)), title('Average HE Image')
hold off
