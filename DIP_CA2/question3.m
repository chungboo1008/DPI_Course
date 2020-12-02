image = imread('lena.bmp');

% --fourier transform of images-- %
% do 2D fast fourier transform
image_after_fft = fft2(image);
% move the origin to center
F = fftshift(image_after_fft);
% spectrum display
image_spectrum = log(1 + abs(F));

% --gaussian lowpass filter with sigma 10-- %
% hsize:Note that you can set the filter size equal to the image size
hsize = size(image);
% question needs to use '10'
sigma = 10;
guassian_lowpass_filter = mat2gray(fspecial('gaussian',hsize,sigma));

% --spectrum after lowerpass filter-- %
% filter by gaussian
imglp = F.*guassian_lowpass_filter;
% spectrum display
specturm_GLPF = log(1 + abs(imglp));

% --guassian lowerpass filtered image-- %
% do 2D inverse fast fourier transform
image_GLPF_ifft = ifft2(imglp);
% real part of image
image_GLPF_real_part = real(image_GLPF_ifft);
% convert datatype to uint8
image_GLPF = uint8(image_GLPF_real_part);

% --image output-- %
figure('Name','guassian lowpass filter with sigma of 10','NumberTitle','off');
subplot(2, 2, 1); imshow(image);
title('(a) original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 2); imshow(mat2gray(image_spectrum));
title('(b) spectrum','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 3); imshow(mat2gray(specturm_GLPF));
title('(c) spectrum after GLPF','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 4); imshow(image_GLPF);
title('(d) image after GLPF with sigma 10','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

% --gaussian lowpass filter  with sigma 30-- %
sigma = 30;
guassian_lowpass_filter = mat2gray(fspecial('gaussian',hsize,sigma));

imglp = F.*guassian_lowpass_filter;
specturm_GLPF = log(1 + abs(imglp));

image_GLPF_ifft = ifft2(imglp);
image_GLPF_real_part = real(image_GLPF_ifft);
image_GLPF = uint8(image_GLPF_real_part);

figure('Name','guassian lowpass filter with sigma of 30','NumberTitle','off');
subplot(2, 2, 1); imshow(image);
title('(a) original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 2); imshow(mat2gray(image_spectrum));
title('(b) spectrum','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 3); imshow(mat2gray(specturm_GLPF));
title('(c) spectrum after GLPF','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 4); imshow(image_GLPF);
title('(d) image after GLPF with sigma 10','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

% --gaussian highpass filter  with sigma 10-- %
sigma = 10;
guassian_lowpass_filter = mat2gray(fspecial('gaussian',hsize,sigma));
guassian_highpass_filter = 1 - guassian_lowpass_filter;

imglp = F.*guassian_highpass_filter;
specturm_GHPF = log(1 + abs(imglp));

image_GHPF_ifft = ifft2(imglp);
image_GHPF_real_part = real(image_GHPF_ifft);
image_GHPF = uint8(image_GHPF_real_part);

figure('Name','guassian highpass filter with sigma of 10','NumberTitle','off');
subplot(2, 2, 1); imshow(image);
title('(a) original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 2); imshow(mat2gray(image_spectrum));
title('(b) spectrum','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 3); imshow(mat2gray(specturm_GHPF));
title('(c) spectrum after GHPF','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 4); imshow(image_GHPF);
title('(d) image after GHPF with sigma 10','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

% --gaussian highpass filter  with sigma 30-- %
sigma = 30;
guassian_lowpass_filter = mat2gray(fspecial('gaussian',hsize,sigma));
guassian_highpass_filter = 1 - guassian_lowpass_filter;

imglp = F.*guassian_highpass_filter;
specturm_GHPF = log(1 + abs(imglp));

image_GHPF_ifft = ifft2(imglp);
image_GHPF_real_part = real(image_GHPF_ifft);
image_GHPF = uint8(image_GHPF_real_part);

figure('Name','guassian highpass filter with sigma of 30','NumberTitle','off');
subplot(2, 2, 1); imshow(image);
title('(a) original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 2); imshow(mat2gray(image_spectrum));
title('(b) spectrum','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 3); imshow(mat2gray(specturm_GHPF));
title('(c) spectrum after GHPF','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 4); imshow(image_GHPF);
title('(d) image after GHPF with sigma 10','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
