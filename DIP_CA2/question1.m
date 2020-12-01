% -----single edge----- %
image = [zeros(256, 128) ones(256, 128)];

% --fouroer transorm of images-- %
% do fast fourier transform
image_after_fft = fft2(image);
% move the origin to center
F = fftshift(image_after_fft);
% spectrum
image_spectrum = log(1 + abs(F));
% real part of image
real_part_of_image = real(F);
% imaginary part of image
imaginary_part_of_image = imag(F);

% --image output-- %
figure('Name','single edge','NumberTitle','off');
subplot(2, 2, 1); imshow(image);
title('(a) original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 2); imshow(real_part_of_image);
title('(b) real part','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 3); imshow(imaginary_part_of_image);
title('(c) imaginary part','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 4); imshow(mat2gray(image_spectrum));
title('(d) spectrum','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

% -----box----- %
image = zeros(256, 256);
image(78:178, 78:178) = 1;

image_after_fft = fft2(image);
F = fftshift(image_after_fft);
image_spectrum = log(1 + abs(F));
real_part_of_image = real(F);
imaginary_part_of_image = imag(F);

figure('Name','box','NumberTitle','off');
subplot(2, 2, 1); imshow(image);
title('(a) original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 2); imshow(real_part_of_image);
title('(b) real part','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 3); imshow(imaginary_part_of_image);
title('(c) imaginary part','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 4); imshow(mat2gray(image_spectrum));
title('(d) spectrum','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

% -----45° rotated box----- %
[x, y] = meshgrid(1:256, 1:256);
image = (x+y<329) & (x+y>182) & (x-y>-67) & (x-y<73);

image_after_fft = fft2(image);
F = fftshift(image_after_fft);
image_spectrum = log(1 + abs(F));
real_part_of_image = real(F);
imaginary_part_of_image = imag(F);

figure('Name','45° rotated box','NumberTitle','off');
subplot(2, 2, 1); imshow(image);
title('(a) original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 2); imshow(real_part_of_image);
title('(b) real part','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 3); imshow(imaginary_part_of_image);
title('(c) imaginary part','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 4); imshow(mat2gray(image_spectrum));
title('(d) spectrum','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

% -----circle----- %
[x, y] = meshgrid(-128:127, -128:127);
z = sqrt(x.^2 + y.^2);
image = (z < 20);

image_after_fft = fft2(image);
F = fftshift(image_after_fft);
image_spectrum = log(1 + abs(F));
real_part_of_image = real(F);
imaginary_part_of_image = imag(F);

figure('Name','circle','NumberTitle','off');
subplot(2, 2, 1); imshow(image);
title('(a) original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 2); imshow(real_part_of_image);
title('(b) real part','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 3); imshow(imaginary_part_of_image);
title('(c) imaginary part','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(2, 2, 4); imshow(mat2gray(image_spectrum));
title('(d) spectrum','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

