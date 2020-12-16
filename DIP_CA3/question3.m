image = imread('woman_blonde.tif');

%% salt & pepper with noise density 0.1
image_G_1 = imnoise(image, 'salt & pepper', 0.1);
psnr_1 = calculate(image, image_G_1);

%% salt & pepper with noise density 0.4
image_G_4 = imnoise(image, 'salt & pepper', 0.4);
psnr_4 = calculate(image, image_G_4);

%% Median filter define
% using MATLAB 'medfilt2' function

%% Alpha-trimmed mean filter define
% call the function at the buttom

%% Midpoint filter define
% call the function at the buttom

%% Outlier filter define
% call the function at the buttom

%% Adaptive median filter define
% call the function at the buttom

%% Median filter + salt & pepper noise with noise density 0.1
restore_1_a3 = uint8(medfilt2(image_G_1, [3, 3]));
restore_1_a5 = uint8(medfilt2(image_G_1, [5, 5]));
restore_1_a7 = uint8(medfilt2(image_G_1, [7, 7]));
restore_1_a9 = uint8(medfilt2(image_G_1, [9, 9]));

psnr_1_a3 = calculate(image, restore_1_a3);
psnr_1_a5 = calculate(image, restore_1_a5);
psnr_1_a7 = calculate(image, restore_1_a7);
psnr_1_a9 = calculate(image, restore_1_a9);

figure('Name','Median filter with salt & pepper noise density 0.1','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_1);
title({'noise density 0.1'; round(psnr_1, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_1_a3);
title({'restore with filter 3x3'; round(psnr_1_a3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_1_a5);
title({'restore with filter 5x5'; round(psnr_1_a5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_1_a7);
title({'restore with filter 7x7'; round(psnr_1_a7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_1_a9);
title({'restore with filter 9x9'; round(psnr_1_a9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Median filter + salt & pepper noise with noise density 0.4
restore_4_a3 = uint8(medfilt2(image_G_4, [3, 3]));
restore_4_a5 = uint8(medfilt2(image_G_4, [5, 5]));
restore_4_a7 = uint8(medfilt2(image_G_4, [7, 7]));
restore_4_a9 = uint8(medfilt2(image_G_4, [9, 9]));

psnr_4_a3 = calculate(image, restore_4_a3);
psnr_4_a5 = calculate(image, restore_4_a5);
psnr_4_a7 = calculate(image, restore_4_a7);
psnr_4_a9 = calculate(image, restore_4_a9);

figure('Name','Median filter with salt & pepper noise density 0.4','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_4);
title({'noise density 0.4'; round(psnr_4, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_4_a3);
title({'restore with filter 3x3'; round(psnr_4_a3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_4_a5);
title({'restore with filter 5x5'; round(psnr_4_a5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_4_a7);
title({'restore with filter 7x7'; round(psnr_4_a7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_4_a9);
title({'restore with filter 9x9'; round(psnr_4_a9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Alpha-trimmed mean filter + salt & pepper noise with noise density 0.1
restore_1_b3 = uint8(alphaTrimMean(image_G_1, 3, 3, 6));
restore_1_b5 = uint8(alphaTrimMean(image_G_1, 5, 5, 6));
restore_1_b7 = uint8(alphaTrimMean(image_G_1, 7, 7, 6));
restore_1_b9 = uint8(alphaTrimMean(image_G_1, 9, 9, 6));

psnr_1_b3 = calculate(image, restore_1_b3);
psnr_1_b5 = calculate(image, restore_1_b5);
psnr_1_b7 = calculate(image, restore_1_b7);
psnr_1_b9 = calculate(image, restore_1_b9);

figure('Name','Alpha-trimmed mean filter with salt & pepper noise density 0.1','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_1);
title({'noise density 0.1'; round(psnr_1, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_1_b3);
title({'restore with filter 3x3'; round(psnr_1_b3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_1_b5);
title({'restore with filter 5x5'; round(psnr_1_b5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_1_b7);
title({'restore with filter 7x7'; round(psnr_1_b7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_1_b9);
title({'restore with filter 9x9'; round(psnr_1_b9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Alpha-trimmed mean filter + salt & pepper noise with noise density 0.4
restore_4_b5 = uint8(alphaTrimMean(image_G_4, 5, 5, 8));
restore_4_b7 = uint8(alphaTrimMean(image_G_4, 7, 7, 8));
restore_4_b9 = uint8(alphaTrimMean(image_G_4, 9, 9, 8));
restore_4_b11 = uint8(alphaTrimMean(image_G_4, 11, 11, 8));

psnr_4_b5 = calculate(image, restore_4_b5);
psnr_4_b7 = calculate(image, restore_4_b7);
psnr_4_b9 = calculate(image, restore_4_b9);
psnr_4_b11 = calculate(image, restore_4_b11);

figure('Name','Alpha-trimmed mean filter with salt & pepper noise density 0.4','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_4);
title({'noise density 0.4'; round(psnr_4, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_4_b5);
title({'restore with filter 5x5'; round(psnr_4_b5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_4_b7);
title({'restore with filter 7x7'; round(psnr_4_b7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_4_b9);
title({'restore with filter 9x9'; round(psnr_4_b9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_4_b11);
title({'restore with filter 11x11'; round(psnr_4_b11, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Midpoint filter + salt & pepper noise with noise density 0.1
restore_1_c3 = uint8(midpoint(image_G_1, 3, 3));
restore_1_c5 = uint8(midpoint(image_G_1, 5, 5));
restore_1_c7 = uint8(midpoint(image_G_1, 7, 7));
restore_1_c9 = uint8(midpoint(image_G_1, 9, 9));

psnr_1_c3 = calculate(image, restore_1_c3);
psnr_1_c5 = calculate(image, restore_1_c5);
psnr_1_c7 = calculate(image, restore_1_c7);
psnr_1_c9 = calculate(image, restore_1_c9);

figure('Name','Midpoint filter with salt & pepper noise density 0.1','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_1);
title({'noise density 0.1'; round(psnr_1, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_1_c3);
title({'restore with filter 3x3'; round(psnr_1_c3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_1_c5);
title({'restore with filter 5x5'; round(psnr_1_c5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_1_c7);
title({'restore with filter 7x7'; round(psnr_1_c7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_1_c9);
title({'restore with filter 9x9'; round(psnr_1_c9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% MidPoint filter + salt & pepper noise with noise density 0.4
restore_4_c3 = uint8(midpoint(image_G_4, 3, 3));
restore_4_c5 = uint8(midpoint(image_G_4, 5, 5));
restore_4_c7 = uint8(midpoint(image_G_4, 7, 7));
restore_4_c9 = uint8(midpoint(image_G_4, 9, 9));

psnr_4_c3 = calculate(image, restore_4_c3);
psnr_4_c5 = calculate(image, restore_4_c5);
psnr_4_c7 = calculate(image, restore_4_c7);
psnr_4_c9 = calculate(image, restore_4_c9);

figure('Name','MidPoint filter with salt & pepper noise density 0.4','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_4);
title({'noise density 0.4'; round(psnr_4, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_4_c3);
title({'restore with filter 3x3'; round(psnr_4_c3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_4_c5);
title({'restore with filter 5x5'; round(psnr_4_c5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_4_c7);
title({'restore with filter 7x7'; round(psnr_4_c7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_4_c9);
title({'restore with filter 9x9'; round(psnr_4_c9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Outlier filter + salt & pepper noise with noise density 0.1
restore_1_d3 = uint8(outlier(image_G_1, 3, 3, 0.3));
restore_1_d5 = uint8(outlier(image_G_1, 5, 5, 0.3));
restore_1_d7 = uint8(outlier(image_G_1, 7, 7, 0.3));
restore_1_d9 = uint8(outlier(image_G_1, 9, 9, 0.3));

psnr_1_d3 = calculate(image, restore_1_d3);
psnr_1_d5 = calculate(image, restore_1_d5);
psnr_1_d7 = calculate(image, restore_1_d7);
psnr_1_d9 = calculate(image, restore_1_d9);

figure('Name','Outlier filter with salt & pepper noise density 0.1','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_1);
title({'noise density 0.1'; round(psnr_1, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_1_d3);
title({'restore with filter 3x3'; round(psnr_1_d3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_1_d5);
title({'restore with filter 5x5'; round(psnr_1_d5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_1_d7);
title({'restore with filter 7x7'; round(psnr_1_d7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_1_d9);
title({'restore with filter 9x9'; round(psnr_1_d9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Outlier filter + salt & pepper noise with noise density 0.4
restore_4_d3 = uint8(outlier(image_G_4, 3, 3, 0.3));
restore_4_d5 = uint8(outlier(image_G_4, 5, 5, 0.3));
restore_4_d7 = uint8(outlier(image_G_4, 7, 7, 0.3));
restore_4_d9 = uint8(outlier(image_G_4, 9, 9, 0.3));

psnr_4_d3 = calculate(image, restore_4_d3);
psnr_4_d5 = calculate(image, restore_4_d5);
psnr_4_d7 = calculate(image, restore_4_d7);
psnr_4_d9 = calculate(image, restore_4_d9);

figure('Name','Outlier filter with salt & pepper noise density 0.4','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_4);
title({'noise density 0.4'; round(psnr_4, 10)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_4_d3);
title({'restore with filter 3x3'; round(psnr_4_d3, 10)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_4_d5);
title({'restore with filter 5x5'; round(psnr_4_d5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_4_d7);
title({'restore with filter 7x7'; round(psnr_4_d7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_4_d9);
title({'restore with filter 9x9'; round(psnr_4_d9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Adaptive median filter + salt & pepper noise with noise density 0.1
restore_1_e3 = uint8(adpmedian(image_G_1, 3));
restore_1_e5 = uint8(adpmedian(image_G_1, 5));
restore_1_e7 = uint8(adpmedian(image_G_1, 7));
restore_1_e9 = uint8(adpmedian(image_G_1, 9));

psnr_1_e3 = calculate(image, restore_1_e3);
psnr_1_e5 = calculate(image, restore_1_e5);
psnr_1_e7 = calculate(image, restore_1_e7);
psnr_1_e9 = calculate(image, restore_1_e9);

figure('Name','Adaptive median filter with salt & pepper noise density 0.1','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_1);
title({'noise density 0.1'; round(psnr_1, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_1_e3);
title({'restore with filter 3x3'; round(psnr_1_e3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_1_e5);
title({'restore with filter 5x5'; round(psnr_1_e5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_1_e7);
title({'restore with filter 7x7'; round(psnr_1_e7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_1_e9);
title({'restore with filter 9x9'; round(psnr_1_e9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Adaptive median filter + salt & pepper noise with noise density 0.4
restore_4_e3 = uint8(adpmedian(image_G_4, 3));
restore_4_e5 = uint8(adpmedian(image_G_4, 5));
restore_4_e7 = uint8(adpmedian(image_G_4, 7));
restore_4_e9 = uint8(adpmedian(image_G_4, 9));

psnr_4_e3 = calculate(image, restore_4_e3);
psnr_4_e5 = calculate(image, restore_4_e5);
psnr_4_e7 = calculate(image, restore_4_e7);
psnr_4_e9 = calculate(image, restore_4_e9);

figure('Name','Adaptive median filter with salt & pepper noise density 0.4','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_4);
title({'noise density 0.4'; round(psnr_4, 10)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_4_e3);
title({'restore with filter 3x3'; round(psnr_4_e3, 10)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_4_e5);
title({'restore with filter 5x5'; round(psnr_4_e5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_4_e7);
title({'restore with filter 7x7'; round(psnr_4_e7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_4_e9);
title({'restore with filter 9x9'; round(psnr_4_e9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% the best answer
figure('Name','The best answer','NumberTitle','off');
subplot(5, 2, 1); imshow(restore_1_a3);
title({'Median filter:';'density = 0.1 / filter 3x3'; round(psnr_1_a3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 2); imshow(restore_4_a5);
title({'Median filter:';'density = 0.4 / filter 5x5'; round(psnr_4_a5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 3); imshow(restore_1_b3);
title({'Alpha-trim mean filter:';'density = 0.1 / filter 3x3 / d = 6'; round(psnr_1_b3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 4); imshow(restore_4_b9);
title({'Alpha-trim mean filter:';'density = 0.4 / filter 9x9 / d = 8'; round(psnr_4_b9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 5); imshow(restore_1_c3);
title({'Midpoint filter:';'density = 0.1 / filter 3x3'; round(psnr_1_c3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 6); imshow(restore_4_c3);
title({'Midpoint filter:';'density = 0.4 / filter 3x3'; round(psnr_4_c3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 7); imshow(restore_1_d7);
title({'Outlier filter:';'density = 0.1 / filter 7x7 / D = 0.3'; round(psnr_1_d7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 8); imshow(restore_4_d7);
title({'Outlier filter:';'density = 0.4 / filter 7x7 / D = 0.3'; round(psnr_4_d7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 9); imshow(restore_1_e5);
title({'Adaptive median filter:';'density = 0.1 / filter 5x5'; round(psnr_1_e5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(5, 2, 10); imshow(restore_4_e7);
title({'Adaptive median filter:';'density = 0.4 / filter 7x7'; round(psnr_4_e7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

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

%% Midpoint filter
function outputImage = midpoint(inputImage, m, n)
    g = im2double(inputImage);
    f = 0.5 * (ordfilt2(g, m*n, ones(m, n)) + ordfilt2(g, 1, ones(m, n)));
    outputImage = im2uint8(f);
end

%% Outlier filter
function outputImage = outlier(inputImage, m, n, D)
    g = im2double(inputImage);
    outputImage = g;
    
    M = round(m/2) - 1;
    N = round(n/2) - 1;
    
    for i = 1+M:size(g, 1)-M
        for j = 1+N:size(g, 2)-N
            % k is mean of the values of its surrounding neighbors
            k = sum(g(i-M:i+M, j-N:j+N), 'all') / (m*n - 1);
            if abs(g(i, j) - k) > D
                outputImage(i, j) = k;
            else
                outputImage(i, j) = g(i, j);
            end
        end
    end
    outputImage = im2uint8(outputImage);
end

%% Adaptive median filter
function outputImage = adpmedian(inputImage, Smax)
    % Initial setup.
    g = inputImage;
    f = g;
    f(:) = 0;
    alreadyProcessed = false(size(g));

    % Begin filtering.
    for k = 3:2:Smax
       zmin = ordfilt2(g, 1, ones(k, k), 'symmetric');
       zmax = ordfilt2(g, k * k, ones(k, k), 'symmetric');
       zmed = medfilt2(g, [k k], 'symmetric');

       processUsingLevelB = (zmed > zmin) & (zmax > zmed) & ...
           ~alreadyProcessed; 
       zB = (g > zmin) & (zmax > g);
       outputZxy  = processUsingLevelB & zB;
       outputZmed = processUsingLevelB & ~zB;
       f(outputZxy) = g(outputZxy);
       f(outputZmed) = zmed(outputZmed);

       alreadyProcessed = alreadyProcessed | processUsingLevelB;
       if all(alreadyProcessed(:))
          break;
       end
    end
    
    outputImage = f;
    outputImage(~alreadyProcessed) = zmed(~alreadyProcessed);
end