% Read the RGB image
I = imread('img/spine.jpg');

% Plot the initial images
subplot(1, 3, 1), subimage(I), title('Original Image')
hold on

% Average to get grayscale form
I = mean(I, 3);

% Log Transform
c = .15;
Ilog = c * log(I + eps);

subplot(1, 3, 2), subimage(Ilog), title('Logged Image')
hold on

% Power Law Transform
gamma = .4;
c = 1;
Ipwr = c * (I .^ gamma);
% Normalize
Ipwr = mat2gray(Ipwr);
% Alternative way
% I = mat2gray(I);
% Ipwr = imadjust(I, [], [], gamma); 

subplot(1, 3, 3), subimage(Ipwr), title('Power Transformed Image')
hold off
