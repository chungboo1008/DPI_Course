image = imread('walkbridge.tif');

%% speckle with variance 0.1
image_G_1 = imnoise(image, 'speckle', 0.1);
psnr_1 = calculate(image, image_G_1);

%% speckle with variance 0.3
image_G_3 = imnoise(image, 'speckle', 0.3);
psnr_3 = calculate(image, image_G_3);

%% Arithmetic mean filter define
filter_a3 = fspecial('average', [3, 3]);
filter_a5 = fspecial('average', [5, 5]);
filter_a7 = fspecial('average', [7, 7]);
filter_a9 = fspecial('average', [9, 9]);

%% Gaussian lowpass filter define
filter_b5_10 = fspecial('gaussian', [5, 5], 1);
filter_b7_10 = fspecial('gaussian', [7, 7], 1);
filter_b9_10 = fspecial('gaussian', [9, 9], 1);
filter_b11_10 = fspecial('gaussian', [11, 11], 1);

filter_b3_17 = fspecial('gaussian', [3, 3], 1.7);
filter_b5_17 = fspecial('gaussian', [5, 5], 1.7);
filter_b7_17 = fspecial('gaussian', [7, 7], 1.7);
filter_b9_17 = fspecial('gaussian', [9, 9], 1.7);

%% Wiener filter
% using MATLAB 'wiener2' function 

%% Outlier filter define
% call the function at the buttom

%% Alpha-trimmed mean filter define
% call the function at the buttom

%% Midpoint filter define
% call the function at the buttom

%% Contraharmonic mean filter define
% call the function at the buttom

%% Arithmetic mean filter + speckle noise with variance 0.1
restore_1_a3 = uint8(filter2(filter_a3, image_G_1));
restore_1_a5 = uint8(filter2(filter_a5, image_G_1));
restore_1_a7 = uint8(filter2(filter_a7, image_G_1));
restore_1_a9 = uint8(filter2(filter_a9, image_G_1));

psnr_1_a3 = calculate(image, restore_1_a3);
psnr_1_a5 = calculate(image, restore_1_a5);
psnr_1_a7 = calculate(image, restore_1_a7);
psnr_1_a9 = calculate(image, restore_1_a9);

figure('Name','Arithmetic mean filter with speckle variance 0.1','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_1);
title({'variance 0.1'; round(psnr_1, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_1_a3);
title({'restore with filter 3x3'; round(psnr_1_a3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_1_a5);
title({'restore with filter 5x5'; round(psnr_1_a5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_1_a7);
title({'restore with filter 7x7'; round(psnr_1_a7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_1_a9);
title({'restore with filter 9x9'; round(psnr_1_a9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Arithmetic mean filter + speckle noise with variance 0.3
restore_3_a3 = uint8(filter2(filter_a3, image_G_3));
restore_3_a5 = uint8(filter2(filter_a5, image_G_3));
restore_3_a7 = uint8(filter2(filter_a7, image_G_3));
restore_3_a9 = uint8(filter2(filter_a9, image_G_3));

psnr_3_a3 = calculate(image, restore_3_a3);
psnr_3_a5 = calculate(image, restore_3_a5);
psnr_3_a7 = calculate(image, restore_3_a7);
psnr_3_a9 = calculate(image, restore_3_a9);

figure('Name','Arithmetic mean filter with speckle variance 0.3','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_3);
title({'variance 0.3'; round(psnr_3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_3_a3);
title({'restore with filter 3x3'; round(psnr_3_a3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_3_a5);
title({'restore with filter 5x5'; round(psnr_3_a5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_3_a7);
title({'restore with filter 7x7'; round(psnr_3_a7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_3_a9);
title({'restore with filter 9x9'; round(psnr_3_a9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Gaussian lowpass filter + speckle noise with variance 0.1
restore_1_b5 = uint8(filter2(filter_b5_10, image_G_1));
restore_1_b7 = uint8(filter2(filter_b7_10, image_G_1));
restore_1_b9 = uint8(filter2(filter_b9_10, image_G_1));
restore_1_b11 = uint8(filter2(filter_b11_10, image_G_1));

psnr_1_b5 = calculate(image, restore_1_b5);
psnr_1_b7 = calculate(image, restore_1_b7);
psnr_1_b9 = calculate(image, restore_1_b9);
psnr_1_b11 = calculate(image, restore_1_b11);

figure('Name','Gaussian lowpass filter with speckle variance 0.1','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_1);
title({'variance 0.1'; round(psnr_1, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_1_b5);
title({'restore with filter 5x5'; round(psnr_1_b5, 6)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_1_b7);
title({'restore with filter 7x7'; round(psnr_1_b7, 6)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_1_b9);
title({'restore with filter 9x9'; round(psnr_1_b9, 6)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_1_b11);
title({'restore with filter 11x11'; round(psnr_1_b11, 6)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Gaussian lowpass filter + speckle noise with variance 0.3
restore_3_b3 = uint8(filter2(filter_b3_17, image_G_3));
restore_3_b5 = uint8(filter2(filter_b5_17, image_G_3));
restore_3_b7 = uint8(filter2(filter_b7_17, image_G_3));
restore_3_b9 = uint8(filter2(filter_b9_17, image_G_3));

psnr_3_b3 = calculate(image, restore_3_b3);
psnr_3_b5 = calculate(image, restore_3_b5);
psnr_3_b7 = calculate(image, restore_3_b7);
psnr_3_b9 = calculate(image, restore_3_b9);

figure('Name','Gaussian lowpass filter with speckle variance 0.3','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_3);
title({'variance 0.3'; round(psnr_3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_3_b3);
title({'restore with filter 3x3'; round(psnr_3_b3, 6)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_3_b5);
title({'restore with filter 5x5'; round(psnr_3_b5, 6)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_3_b7);
title({'restore with filter 7x7'; round(psnr_3_b7, 6)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_3_b9);
title({'restore with filter 9x9'; round(psnr_3_b9, 6)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Wiener filter + speckle noise with variance 0.1
restore_1_c3 = uint8(wiener2(image_G_1, [3, 3]));
restore_1_c5 = uint8(wiener2(image_G_1, [5, 5]));
restore_1_c7 = uint8(wiener2(image_G_1, [7 ,7]));
restore_1_c9 = uint8(wiener2(image_G_1, [9, 9]));

psnr_1_c3 = calculate(image, restore_1_c3);
psnr_1_c5 = calculate(image, restore_1_c5);
psnr_1_c7 = calculate(image, restore_1_c7);
psnr_1_c9 = calculate(image, restore_1_c9);

figure('Name','Wiener filter with speckle variance 0.1','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_1);
title({'variance 0.1'; round(psnr_1, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_1_c3);
title({'restore with filter 3x3'; round(psnr_1_c3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_1_c5);
title({'restore with filter 5x5'; round(psnr_1_c5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_1_c7);
title({'restore with filter 7x7'; round(psnr_1_c7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_1_c9);
title({'restore with filter 9x9'; round(psnr_1_c9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Wiener filter + speckle noise with variance 0.3
restore_3_c3 = uint8(wiener2(image_G_3, [3, 3]));
restore_3_c5 = uint8(wiener2(image_G_3, [5, 5]));
restore_3_c7 = uint8(wiener2(image_G_3, [7 ,7]));
restore_3_c9 = uint8(wiener2(image_G_3, [9, 9]));

psnr_3_c3 = calculate(image, restore_3_c3);
psnr_3_c5 = calculate(image, restore_3_c5);
psnr_3_c7 = calculate(image, restore_3_c7);
psnr_3_c9 = calculate(image, restore_3_c9);

figure('Name','Wiener filter with speckle variance 0.3','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_3);
title({'variance 0.3'; round(psnr_3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_3_c3);
title({'restore with filter 3x3'; round(psnr_3_c3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_3_c5);
title({'restore with filter 5x5'; round(psnr_3_c5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_3_c7);
title({'restore with filter 7x7'; round(psnr_3_c7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_3_c9);
title({'restore with filter 9x9'; round(psnr_3_c9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Outlier filter + speckle noise with variance 0.1
restore_1_d3 = uint8(outlier(image_G_1, 3, 3, 0));
restore_1_d5 = uint8(outlier(image_G_1, 5, 5, 0));
restore_1_d7 = uint8(outlier(image_G_1, 7, 7, 0));
restore_1_d9 = uint8(outlier(image_G_1, 9, 9, 0));

psnr_1_d3 = calculate(image, restore_1_d3);
psnr_1_d5 = calculate(image, restore_1_d5);
psnr_1_d7 = calculate(image, restore_1_d7);
psnr_1_d9 = calculate(image, restore_1_d9);

figure('Name','Outlier filter with speckle variance 0.1','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_1);
title({'variance 0.1'; round(psnr_1, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_1_d3);
title({'restore with filter 3x3'; round(psnr_1_d3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_1_d5);
title({'restore with filter 5x5'; round(psnr_1_d5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_1_d7);
title({'restore with filter 7x7'; round(psnr_1_d7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_1_d9);
title({'restore with filter 9x9'; round(psnr_1_d9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Outlier filter + speckle noise with variance 0.3
restore_3_d3 = uint8(outlier(image_G_3, 3, 3, 0));
restore_3_d5 = uint8(outlier(image_G_3, 5, 5, 0));
restore_3_d7 = uint8(outlier(image_G_3, 7, 7, 0));
restore_3_d9 = uint8(outlier(image_G_3, 9, 9, 0));

psnr_3_d3 = calculate(image, restore_3_d3);
psnr_3_d5 = calculate(image, restore_3_d5);
psnr_3_d7 = calculate(image, restore_3_d7);
psnr_3_d9 = calculate(image, restore_3_d9);

figure('Name','Outlier filter with speckle variance 0.3','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_3);
title({'variance 0.3'; round(psnr_3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_3_d3);
title({'restore with filter 3x3'; round(psnr_3_d3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_3_d5);
title({'restore with filter 5x5'; round(psnr_3_d5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_3_d7);
title({'restore with filter 7x7'; round(psnr_3_d7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_3_d9);
title({'restore with filter 9x9'; round(psnr_3_d9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Alpha-trimmed mean filter + speckle noise with variance 0.1
restore_1_e3 = uint8(alphaTrimMean(image_G_1, 3, 3, 4));
restore_1_e5 = uint8(alphaTrimMean(image_G_1, 5, 5, 4));
restore_1_e7 = uint8(alphaTrimMean(image_G_1, 7, 7, 4));
restore_1_e9 = uint8(alphaTrimMean(image_G_1, 9, 9, 4));

psnr_1_e3 = calculate(image, restore_1_e3);
psnr_1_e5 = calculate(image, restore_1_e5);
psnr_1_e7 = calculate(image, restore_1_e7);
psnr_1_e9 = calculate(image, restore_1_e9);

figure('Name','Alpha-trimmed mean filter with speckle variance 0.1','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_1);
title({'variance 0.1'; round(psnr_1, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_1_e3);
title({'restore with filter 3x3'; round(psnr_1_e3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_1_e5);
title({'restore with filter 5x5'; round(psnr_1_e5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_1_e7);
title({'restore with filter 7x7'; round(psnr_1_e7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_1_e9);
title({'restore with filter 9x9'; round(psnr_1_e9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Alpha-trimmed mean filter + speckle noise with variance 0.3
restore_3_e3 = uint8(alphaTrimMean(image_G_3, 3, 3, 4));
restore_3_e5 = uint8(alphaTrimMean(image_G_3, 5, 5, 4));
restore_3_e7 = uint8(alphaTrimMean(image_G_3, 7, 7, 4));
restore_3_e9 = uint8(alphaTrimMean(image_G_3, 9, 9, 4));

psnr_3_e3 = calculate(image, restore_3_e3);
psnr_3_e5 = calculate(image, restore_3_e5);
psnr_3_e7 = calculate(image, restore_3_e7);
psnr_3_e9 = calculate(image, restore_3_e9);

figure('Name','Alpha-trimmed mean filter with speckle variance 0.3','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_3);
title({'variance 0.3'; round(psnr_3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_3_e3);
title({'restore with filter 3x3'; round(psnr_3_e3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_3_e5);
title({'restore with filter 5x5'; round(psnr_3_e5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_3_e7);
title({'restore with filter 7x7'; round(psnr_3_e7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_3_e9);
title({'restore with filter 9x9'; round(psnr_3_e9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Midpoint mean filter + speckle noise with variance 0.1
restore_1_f3 = uint8(midpoint(image_G_1, 3, 3));
restore_1_f5 = uint8(midpoint(image_G_1, 5, 5));
restore_1_f7 = uint8(midpoint(image_G_1, 7, 7));
restore_1_f9 = uint8(midpoint(image_G_1, 9, 9));

psnr_1_f3 = calculate(image, restore_1_f3);
psnr_1_f5 = calculate(image, restore_1_f5);
psnr_1_f7 = calculate(image, restore_1_f7);
psnr_1_f9 = calculate(image, restore_1_f9);

figure('Name','Midpoint mean filter with speckle variance 0.1','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_1);
title({'variance 0.1'; round(psnr_1, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_1_f3);
title({'restore with filter 3x3'; round(psnr_1_f3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_1_f5);
title({'restore with filter 5x5'; round(psnr_1_f5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_1_f7);
title({'restore with filter 7x7'; round(psnr_1_f7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_1_f9);
title({'restore with filter 9x9'; round(psnr_1_f9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Midpoint mean filter + speckle noise with variance 0.3
restore_3_f3 = uint8(midpoint(image_G_3, 3, 3));
restore_3_f5 = uint8(midpoint(image_G_3, 5, 5));
restore_3_f7 = uint8(midpoint(image_G_3, 7, 7));
restore_3_f9 = uint8(midpoint(image_G_3, 9, 9));

psnr_3_f3 = calculate(image, restore_3_f3);
psnr_3_f5 = calculate(image, restore_3_f5);
psnr_3_f7 = calculate(image, restore_3_f7);
psnr_3_f9 = calculate(image, restore_3_f9);

figure('Name','Midpoint mean filter with speckle variance 0.3','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_3);
title({'variance 0.3'; round(psnr_3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_3_f3);
title({'restore with filter 3x3'; round(psnr_3_f3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_3_f5);
title({'restore with filter 5x5'; round(psnr_3_f5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_3_f7);
title({'restore with filter 7x7'; round(psnr_3_f7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_3_f9);
title({'restore with filter 9x9'; round(psnr_3_f9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Contraharmonic mean filter + speckle noise with variance 0.1
restore_1_g3 = uint8(chmean(image_G_1, 3, 3, 0.1));
restore_1_g5 = uint8(chmean(image_G_1, 5, 5, 0.1));
restore_1_g7 = uint8(chmean(image_G_1, 7, 7, 0.1));
restore_1_g9 = uint8(chmean(image_G_1, 9, 9, 0.1));

psnr_1_g3 = calculate(image, restore_1_g3);
psnr_1_g5 = calculate(image, restore_1_g5);
psnr_1_g7 = calculate(image, restore_1_g7);
psnr_1_g9 = calculate(image, restore_1_g9);

figure('Name','Contraharmonic mean filter with speckle variance 0.1','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_1);
title({'variance 0.1'; round(psnr_1, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_1_g3);
title({'restore with filter 3x3'; round(psnr_1_g3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_1_g5);
title({'restore with filter 5x5'; round(psnr_1_g5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_1_g7);
title({'restore with filter 7x7'; round(psnr_1_g7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_1_g9);
title({'restore with filter 9x9'; round(psnr_1_g9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% Contraharmonic mean filter + speckle noise with variance 0.3
restore_3_g3 = uint8(chmean(image_G_3, 3, 3, 0.2));
restore_3_g5 = uint8(chmean(image_G_3, 5, 5, 0.2));
restore_3_g7 = uint8(chmean(image_G_3, 7, 7, 0.2));
restore_3_g9 = uint8(chmean(image_G_3, 9, 9, 0.2));

psnr_3_g3 = calculate(image, restore_3_g3);
psnr_3_g5 = calculate(image, restore_3_g5);
psnr_3_g7 = calculate(image, restore_3_g7);
psnr_3_g9 = calculate(image, restore_3_g9);

figure('Name','Contraharmonic mean filter with speckle variance 0.3','NumberTitle','off');
subplot(3, 2, 1); imshow(image);
title('original','fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(image_G_3);
title({'variance 0.3'; round(psnr_3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_3_g3);
title({'restore with filter 3x3'; round(psnr_3_g3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_3_g5);
title({'restore with filter 5x5'; round(psnr_3_g5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_3_g7);
title({'restore with filter 7x7'; round(psnr_3_g7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_3_g9);
title({'restore with filter 9x9'; round(psnr_3_g9, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% the best answer
figure('Name','The best answer','NumberTitle','off');
subplot(4, 2, 1); imshow(restore_1_a3);
title({'Arithmetic mean filter:';'density = 0.1 / filter 3x3'; round(psnr_1_a3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(4, 2, 2); imshow(restore_3_a5);
title({'Arithmetic mean filter:';'density = 0.3 / filter 5x5'; round(psnr_3_a5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(4, 2, 3); imshow(restore_1_b7);
title({'Gaussian lowpass filter:';'density = 0.1 / filter 7x7 / d = 6'; round(psnr_1_b7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(4, 2, 4); imshow(restore_3_b7);
title({'Gaussian lowpass filter:';'density = 0.3 / filter 7x7 / d = 8'; round(psnr_3_b7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(4, 2, 5); imshow(restore_1_c5);
title({'Wiener  filter:';'density = 0.1 / filter 5x5'; round(psnr_1_c5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(4, 2, 6); imshow(restore_3_c7);
title({'Wiener filter:';'density = 0.3 / filter 7x7'; round(psnr_3_c7, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(4, 2, 7); imshow(restore_1_d5);
title({'Outlier filter:';'density = 0.1 / filter 5x5 / D = 0.3'; round(psnr_1_d5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(4, 2, 8); imshow(restore_3_d5);
title({'Outlier filter:';'density = 0.3 / filter 5x5 / D = 0.3'; round(psnr_3_d5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
figure('Name','The best answer','NumberTitle','off');
subplot(3, 2, 1); imshow(restore_1_e5);
title({'Alpha-trimmed mean filter:';'density = 0.1 / filter 5x5'; round(psnr_1_e5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 2); imshow(restore_3_e3);
title({'Alpha-trimmed mean filter:';'density = 0.3 / filter 3x3'; round(psnr_3_e3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 3); imshow(restore_1_f3);
title({'Midpoint  filter:';'density = 0.1 / filter 3x3 / D = 0.3'; round(psnr_1_f3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 4); imshow(restore_3_f3);
title({'Midpoint filter:';'density = 0.3 / filter 3x3 / D = 0.3'; round(psnr_3_f3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 5); imshow(restore_1_g3);
title({'Contraharmonic mean filter:';'density = 0.1 / filter 3x3 / D = 0.3'; round(psnr_1_g3, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);
subplot(3, 2, 6); imshow(restore_3_g5);
title({'Contraharmonic mean filter:';'density = 0.3 / filter 5x5 / D = 0.3'; round(psnr_3_g5, 4)},'fontname','雅痞-繁', 'Color', 'k', 'FontSize', 14);

%% PSNR calculate
function psnr = calculate(imageA, imageB)
    A = double(imageA); 
    B = double(imageB);
    d = sum((A(:)-B(:)).^2) / prod(size(A));
    psnr = 10*log10(255*255/d); 
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

%% Contraharmonic mean filter
function outputImage = chmean(inputImage, m, n, q)
    g = im2double(inputImage);
    f = imfilter(g.^(q+1), ones(m, n), 'replicate');
    f = f ./ (imfilter(g.^q, ones(m, n), 'replicate') + eps);
    outputImage = im2uint8(f);
end