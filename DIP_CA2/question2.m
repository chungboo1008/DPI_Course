image = imread('cameraman.tif');

% --fourier transform of images-- %
% do 2D fast fourier transform
image_after_fft = fft2(image);
% move the origin to center
F = fftshift(image_after_fft);
% spectrum display
image_spectrum = log(1 + abs(F));

% --circle matrix-- %
% create a grid(matrix)
[x, y] = meshgrid(-128:127, -128:127);
% get circle radius
z = sqrt(x.^2+y.^2);

% -----ideal lowpss filtering with a cutoff frequency of '5'----- %
circle = (z < 5);

% --spectrum after lowerpass filter-- %
% filter by the circle matrix
imglp = F .*circle;
% spectrum display
specturm_ILPF = log(1 + abs(imglp));

% --lowerpass filtered image-- %
% do 2D inverse fast fourier transform
image_ILPF_ifft = ifft2(imglp);
% real part of image
image_ILPF_real_part = real(image_ILPF_ifft);
% convert datatype to uint8
image_ILPF = uint8(image_ILPF_real_part);

% --image output-- %
figure('Name','ideal lowpss filtering with a cutoff frequency of 5','NumberTitle','off');
subplot(2, 2, 1); imshow(image);
title('(a) original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 2); imshow(mat2gray(image_spectrum));
title('(b) spectrum','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 3); imshow(specturm_ILPF);
title('(c) spectrum after ILPF','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 4); imshow(image_ILPF);
title('(d) image after ILPF','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

% -----ideal lowpss filtering with a cutoff frequency of '30'----- %
circle = (z < 30);

imglp = F .*circle;
specturm_ILPF = log(1 + abs(imglp));

image_ILPF_ifft = ifft2(imglp);
image_ILPF_real_part = real(image_ILPF_ifft);
image_ILPF = uint8(image_ILPF_real_part);

figure('Name','ideal lowpss filtering with a cutoff frequency of 30','NumberTitle','off');
subplot(2, 2, 1); imshow(image);
title('(a) original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 2); imshow(mat2gray(image_spectrum));
title('(b) spectrum','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 3); imshow(mat2gray(specturm_ILPF));
title('(c) spectrum after ILPF','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 4); imshow(image_ILPF);
title('(d) image after ILPF','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

% -----ideal highpass filtering with a cutoff frequency of '5'----- %
circle = (z > 5);

imglp = F .*circle;
specturm_IHPF = log(1 + abs(imglp));

image_IHPF_ifft = ifft2(imglp);
image_IHPF_real_part = real(image_IHPF_ifft);
image_IHPF = uint8(image_IHPF_real_part);

figure('Name','ideal highpass filtering with a cutoff frequency of 5','NumberTitle','off');
subplot(2, 2, 1); imshow(image);
title('(a) original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 2); imshow(mat2gray(image_spectrum));
title('(b) spectrum','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 3); imshow(mat2gray(specturm_IHPF));
title('(c) spectrum after IHPF','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 4); imshow(image_IHPF);
title('(d) image after IHPF','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

% -----ideal highpass filtering with a cutoff frequency of '30'----- %
circle = (z > 30);

imglp = F .*circle;
specturm_IHPF = log(1 + abs(imglp));

image_IHPF_ifft = ifft2(imglp);
image_IHPF_real_part = real(image_IHPF_ifft);
image_IHPF = uint8(image_IHPF_real_part);

figure('Name','ideal highpass filtering with a cutoff frequency of 30','NumberTitle','off');
subplot(2, 2, 1); imshow(image);
title('(a) original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 2); imshow(mat2gray(image_spectrum));
title('(b) spectrum','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 3); imshow(mat2gray(specturm_IHPF));
title('(c) spectrum after IHPF','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 4); imshow(image_IHPF);
title('(d) image after IHPF','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);


