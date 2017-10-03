I=imread('cameraman.tif');
image=im2double(I);
prompt='Enter the dimention of the filter: ';
inp=input(prompt);
IH=directionalFilter(image,inp,'Horizontal');
IV=directionalFilter(image,inp,'Vertical');
IMD=directionalFilter(image,inp,'MainDiagonal');
IOD=directionalFilter(image,inp,'OffDiagonal');
subplot 231;imshow(I);title('Original');
subplot 232;imshow(IH);title('Horizontal Filter');
subplot 233;imshow(IV);title('Vertical Filter');
subplot 234;imshow(IMD);title('Main Diagonal Filter');
subplot 235;imshow(IOD);title('Off Diagonal Filter');
