I1 = imread('img/ass211.tif');
I2 = imread('img/ass212.tif');

% Convert to [0, 1] ranged double
% to perform arithmatic operation
I1 = mat2gray(I1);
I2 = mat2gray(I2);

% Plot the initial images
subplot(2, 2, 1), subimage(I1), title('Image 1')
hold on
subplot(2, 2, 2), subimage(I2), title('Image 2')
hold on

% Generate error if dimensions mismatches
[h, w] = size(I1);
[h1, w1] = size(I2);

if h ~= h1 || w ~= w1
    error('Dimension must be equal');
end

% Get the difference
I = (I1 - I2);
% Revert the negative values
I = abs(I);
% Highlight the differed areas
invI = 1- (I);

% Show result
subplot(2, 2, 3.5), subimage(invI), title('Difference')
hold off
