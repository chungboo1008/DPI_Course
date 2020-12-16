image = imread('peppers_gray.tif');

%% gaussian with variance 0.05
image_G_05 = imnoise(image, 'gaussian', 0, 0.05);
psnr_05 = calculate(image, image_G_05);

%% gaussian with variance 0.2
image_G_2 = imnoise(image, 'gaussian', 0, 0.2);
psnr_2 = calculate(image, image_G_2);

%% Arithmetic mean filter define
filter_a3 = fspecial('average', [3, 3]);
filter_a5 = fspecial('average', [5, 5]);
filter_a7 = fspecial('average', [7, 7]);
filter_a9 = fspecial('average', [9, 9]);

%% Gaussian lowpass filter define
filter_b3 = fspecial('gaussian', [3, 3], 2);
filter_b5 = fspecial('gaussian', [5, 5], 2);
filter_b7 = fspecial('gaussian', [7, 7], 2);
filter_b9 = fspecial('gaussian', [9, 9], 2);
filter_b11 = fspecial('gaussian', [11, 11], 2);
filter_b13 = fspecial('gaussian', [13, 13], 2);
filter_b15 = fspecial('gaussian', [15, 15], 2);
filter_b17 = fspecial('gaussian', [17, 17], 2);

%% Median filter define
% using MATLAB 'medfilt2' function

%% Wiener filter
% using MATLAB 'wiener2' function 

%% Alpha-trimmed mean filter
% call the function at the buttom

%% Arithmetic mean filter + gaussian noise with variance 0.05
restore_05_a3 = uint8(filter2(filter_a3, image_G_05));
restore_05_a5 = uint8(filter2(filter_a5, image_G_05));
restore_05_a7 = uint8(filter2(filter_a7, image_G_05));
restore_05_a9 = uint8(filter2(filter_a9, image_G_05));

psnr_05_a3 = calculate(image, restore_05_a3);
psnr_05_a5 = calculate(image, restore_05_a5);
psnr_05_a7 = calculate(image, restore_05_a7);
psnr_05_a9 = calculate(image, restore_05_a9);

figure('Name','Arithmetic mean filter with Gaussian variance 0.05','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_05);
title({'variance 0.05'; round(psnr_05, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_05_a3);
title({'restore with filter 3x3'; round(psnr_05_a3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_05_a5);
title({'restore with filter 5x5'; round(psnr_05_a5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_05_a7);
title({'restore with filter 7x7'; round(psnr_05_a7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_05_a9);
title({'restore with filter 9x9'; round(psnr_05_a9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Arithmetic mean filter + gaussian noise with variance 0.2
restore_2_a3 = uint8(filter2(filter_a3, image_G_2));
restore_2_a5 = uint8(filter2(filter_a5, image_G_2));
restore_2_a7 = uint8(filter2(filter_a7, image_G_2));
restore_2_a9 = uint8(filter2(filter_a9, image_G_2));

psnr_2_a3 = calculate(image, restore_2_a3);
psnr_2_a5 = calculate(image, restore_2_a5);
psnr_2_a7 = calculate(image, restore_2_a7);
psnr_2_a9 = calculate(image, restore_2_a9);

figure('Name','Arithmetic mean filter with Gaussian variance 0.2','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_2);
title({'variance 0.2'; round(psnr_2, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_2_a3);
title({'restore with filter 3x3'; round(psnr_2_a3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_2_a5);
title({'restore with filter 5x5'; round(psnr_2_a5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_2_a7);
title({'restore with filter 7x7'; round(psnr_2_a7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_2_a9);
title({'restore with filter 9x9'; round(psnr_2_a9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Gaussian lowpass filter + gaussian noise with variance 0.05
restore_05_b3 = uint8(filter2(filter_b3, image_G_05));
restore_05_b5 = uint8(filter2(filter_b5, image_G_05));
restore_05_b7 = uint8(filter2(filter_b7, image_G_05));
restore_05_b9 = uint8(filter2(filter_b9, image_G_05));

psnr_05_b3 = calculate(image, restore_05_b3);
psnr_05_b5 = calculate(image, restore_05_b5);
psnr_05_b7 = calculate(image, restore_05_b7);
psnr_05_b9 = calculate(image, restore_05_b9);

figure('Name','Gaussian lowpass filter with Gaussian variance 0.05','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_05);
title({'variance 0.05'; round(psnr_05, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_05_b3);
title({'restore with filter 3x3'; round(psnr_05_b3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_05_b5);
title({'restore with filter 5x5'; round(psnr_05_b5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_05_b7);
title({'restore with filter 7x7'; round(psnr_05_b7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_05_b7);
title({'restore with filter 9x9'; round(psnr_05_b9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Gaussian lowpass filter + gaussian noise with variance 0.2
restore_2_b11 = uint8(filter2(filter_b11, image_G_2));
restore_2_b13 = uint8(filter2(filter_b13, image_G_2));
restore_2_b15 = uint8(filter2(filter_b15, image_G_2));
restore_2_b17 = uint8(filter2(filter_b17, image_G_2));

psnr_2_b11 = calculate(image, restore_2_b11);
psnr_2_b13 = calculate(image, restore_2_b13);
psnr_2_b15 = calculate(image, restore_2_b15);
psnr_2_b17 = calculate(image, restore_2_b17);

figure('Name','Gaussian lowpass filter with Gaussian variance 0.2','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_2);
title({'variance 0.2'; round(psnr_2, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_2_b11);
title({'restore with filter 11x11'; round(psnr_2_b11, 5)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_2_b13);
title({'restore with filter 13x13'; round(psnr_2_b13, 5)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_2_b15);
title({'restore with filter 15x15'; round(psnr_2_b15, 5)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_2_b17);
title({'restore with filter 17x17'; round(psnr_2_b17, 5)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Median filter + gaussian noise with variance 0.05
restore_05_c3 = uint8(medfilt2(image_G_05, [3, 3]));
restore_05_c5 = uint8(medfilt2(image_G_05, [5, 5]));
restore_05_c7= uint8(medfilt2(image_G_05, [7, 7]));
restore_05_c9 = uint8(medfilt2(image_G_05, [9, 9]));

psnr_05_c3 = calculate(image, restore_05_c3);
psnr_05_c5 = calculate(image, restore_05_c5);
psnr_05_c7 = calculate(image, restore_05_c7);
psnr_05_c9 = calculate(image, restore_05_c9);

figure('Name','Median filter with Gaussian variance 0.05','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_05);
title({'variance 0.05'; round(psnr_05, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_05_c3);
title({'restore with filter 3x3'; round(psnr_05_c3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_05_c5);
title({'restore with filter 5x5'; round(psnr_05_c5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_05_c7);
title({'restore with filter 7x7'; round(psnr_05_c7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_05_c9);
title({'restore with filter 9x9'; round(psnr_05_c9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Median filter + gaussian noise with variance 0.2
restore_2_c5 = uint8(medfilt2(image_G_2, [5, 5]));
restore_2_c7 = uint8(medfilt2(image_G_2, [7, 7]));
restore_2_c9 = uint8(medfilt2(image_G_2, [9, 9]));
restore_2_c11 = uint8(medfilt2(image_G_2, [11, 11]));

psnr_2_c5 = calculate(image, restore_2_c5);
psnr_2_c7 = calculate(image, restore_2_c7);
psnr_2_c9 = calculate(image, restore_2_c9);
psnr_2_c11 = calculate(image, restore_2_c11);

figure('Name','Median filter with Gaussian variance 0.2','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_2);
title({'variance 0.2'; round(psnr_2, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_2_c5);
title({'restore with filter 5x5'; round(psnr_2_c5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_2_c7);
title({'restore with filter 7x7'; round(psnr_2_c7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_2_c9);
title({'restore with filter 9x9'; round(psnr_2_c9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_2_c11);
title({'restore with filter 11x11'; round(psnr_2_c11, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Wiener filter + gaussian noise with variance 0.05
restore_05_d3 = uint8(wiener2(image_G_05, [3, 3]));
restore_05_d5 = uint8(wiener2(image_G_05, [5, 5]));
restore_05_d7 = uint8(wiener2(image_G_05, [7, 7]));
restore_05_d9 = uint8(wiener2(image_G_05, [9, 9]));

psnr_05_d3 = calculate(image, restore_05_d3);
psnr_05_d5 = calculate(image, restore_05_d5);
psnr_05_d7 = calculate(image, restore_05_d7);
psnr_05_d9 = calculate(image, restore_05_d9);

figure('Name','Wiener filter with Gaussian variance 0.05','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_05);
title({'variance 0.05'; round(psnr_05, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_05_d3);
title({'restore with filter 3x3'; round(psnr_05_d3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_05_d5);
title({'restore with filter 5x5'; round(psnr_05_d5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_05_d7);
title({'restore with filter 7x7'; round(psnr_05_d7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_05_d9);
title({'restore with filter 9x9'; round(psnr_05_d9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Wiener filter + gaussian noise with variance 0.2
restore_2_d5 = uint8(wiener2(image_G_2, [5, 5]));
restore_2_d7 = uint8(wiener2(image_G_2, [7, 7]));
restore_2_d9 = uint8(wiener2(image_G_2, [9, 9]));
restore_2_d11 = uint8(wiener2(image_G_2, [11, 11]));

psnr_2_d5 = calculate(image, restore_2_d5);
psnr_2_d7 = calculate(image, restore_2_d7);
psnr_2_d9 = calculate(image, restore_2_d9);
psnr_2_d11 = calculate(image, restore_2_d11);

figure('Name','Wiener filter with Gaussian variance 0.2','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_2);
title({'variance 0.2'; round(psnr_2, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_2_d5);
title({'restore with filter 5x5'; round(psnr_2_d5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_2_d7);
title({'restore with filter 7x7'; round(psnr_2_d7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_2_d9);
title({'restore with filter 9x9'; round(psnr_2_d9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_2_d11);
title({'restore with filter 11x11'; round(psnr_2_d11, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% alpha-trim mean filter + gaussian noise with variance 0.05
restore_05_e3 = uint8(alphaTrimMean(image_G_05, 3, 3, 2));
restore_05_e5 = uint8(alphaTrimMean(image_G_05, 5, 5, 2));
restore_05_e7 = uint8(alphaTrimMean(image_G_05, 7, 7, 2));
restore_05_e9 = uint8(alphaTrimMean(image_G_05, 9, 9, 2));

psnr_05_e3 = calculate(image, restore_05_e3);
psnr_05_e5 = calculate(image, restore_05_e5);
psnr_05_e7 = calculate(image, restore_05_e7);
psnr_05_e9 = calculate(image, restore_05_e9);

figure('Name','alpha-trim mean filter with Gaussian variance 0.05','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_05);
title({'variance 0.05'; round(psnr_05, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_05_e3);
title({'restore with filter 3x3'; round(psnr_05_e3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_05_e5);
title({'restore with filter 5x5'; round(psnr_05_e5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_05_e7);
title({'restore with filter 7x7'; round(psnr_05_e7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_05_e9);
title({'restore with filter 9x9'; round(psnr_05_e9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% alpha-trim mean filter + gaussian noise with variance 0.2
restore_2_e3 = uint8(alphaTrimMean(image_G_2, 3, 3, 6));
restore_2_e5 = uint8(alphaTrimMean(image_G_2, 5, 5, 6));
restore_2_e7 = uint8(alphaTrimMean(image_G_2, 7, 7, 6));
restore_2_e9 = uint8(alphaTrimMean(image_G_2, 9, 9, 6));

psnr_2_e3 = calculate(image, restore_2_e3);
psnr_2_e5 = calculate(image, restore_2_e5);
psnr_2_e7 = calculate(image, restore_2_e7);
psnr_2_e9 = calculate(image, restore_2_e9);

figure('Name','alpha-trim mean filter with Gaussian variance 0.2','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_2);
title({'variance 0.2'; round(psnr_2, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_2_e3);
title({'restore with filter 3x3'; round(psnr_2_e3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_2_e5);
title({'restore with filter 5x5'; round(psnr_2_e5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_2_e7);
title({'restore with filter 7x7'; round(psnr_2_e7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_2_e9);
title({'restore with filter 9x9'; round(psnr_2_e9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% the best answer
figure('Name','The best answer','NumberTitle','off');
subplot(5, 2, 1); imshow(restore_05_a5);
title({'Arithmetic mean filter:';'variance = 0.05 / filter 5x5'; round(psnr_05_a5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 2); imshow(restore_2_a7);
title({'Arithmetic mean filter:';'variance = 0.2 / filter 7x7'; round(psnr_2_a7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 3); imshow(restore_05_b7);
title({'Gaussian lowpass filter:';'variance = 0.05 / filter 7x7'; round(psnr_05_b7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 4); imshow(restore_2_b15);
title({'Gaussian lowpass filter:';'variance = 0.2 / filter 15x15'; round(psnr_2_b15, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 5); imshow(restore_05_c7);
title({'Median filter:';'variance = 0.05 / filter 7x7'; round(psnr_05_c7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 6); imshow(restore_2_c9);
title({'Median filter:';'variance = 0.2 / filter 9x9'; round(psnr_2_c9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 7); imshow(restore_05_d7);
title({'Wiener filter:';'variance = 0.05 / filter 7x7'; round(psnr_05_d7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 8); imshow(restore_2_d9);
title({'Wiener filter:';'variance = 0.2 / filter 9x9'; round(psnr_2_d9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 9); imshow(restore_05_e7);
title({'Wiener filter:';'variance = 0.05 / filter 7x7 / d = 2'; round(psnr_05_e7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 10); imshow(restore_2_e7);
title({'Wiener filter:';'variance = 0.2 / filter 7x7 / d = 2'; round(psnr_2_e7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% PSNR calculate
function psnr = calculate(imageA, imageB)
    A = double(imageA); 
    B = double(imageB);
    d = sum((A(:)-B(:)).^2) / prod(size(A));
    psnr = 10*log10(255*255/d); 
end

%% alpha-trim mean filter
function outputImage = alphaTrimMean(inputImage, m, n, d)
    g = im2double(inputImage);
    f = imfilter(g, ones(m, n), 'symmetric');
    for k = 1:d/2
       f = imsubtract(f, ordfilt2(g, k, ones(m, n), 'symmetric'));
    end
    for k = (m*n - (d/2) + 1):m*n
       f = imsubtract(f, ordfilt2(g, k, ones(m, n), 'symmetric'));
    end
    f = f / (m*n - d);
    outputImage = im2uint8(f);
end
