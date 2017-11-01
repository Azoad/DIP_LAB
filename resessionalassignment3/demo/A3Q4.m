image = imread('cameraman.tif');
subplot(1, 3, 1), subimage(image), title('Original image')
hold on

n=2;
d=15;

h=size(image,1);
w=size(image,2);

fftim = fftshift(fft2(double(image)));

[x y]=meshgrid(-floor(w/2):floor(w/2)-1,-floor(h/2):floor(h/2)-1);

D = sqrt(x.^2 + y.^2);

%High Pass Filter
hhp = 1 ./ (1 + ((d ./ D).^(2 * n)));
out_spec_centre = fftim .* hhp;
out_spec = fftshift(out_spec_centre);
out = uint8(real(ifft2(out_spec)));
subplot(1, 3, 2), subimage(out), title('High pass filter')
hold on

%Low Pass Filter
lpf = 1 - hhp ;
out_lpf = fftim .* lpf ; 
out_lpfim = fftshift(out_lpf);
out2 = uint8(real(ifft2(out_lpfim)));
subplot(1, 3, 3), subimage(out2), title('Low pass filter')
hold off