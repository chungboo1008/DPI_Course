x = imread('lena.bmp');

%part1
lena_4 = imresize(imresize(x, 1/4), 4);
lena_8 = imresize(imresize(x, 1/8), 8);
lena_16 = imresize(imresize(x, 1/16), 16);
lena_32 = imresize(imresize(x, 1/32), 32);

figure(1),
subplot(2, 2, 1);
imshow(lena_4);
title('imresize(imresize(x, 1/4), 4)','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 2);
imshow(lena_8);
title('imresize(imresize(x, 1/8), 8)','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 3);
imshow(lena_16);
title('imresize(imresize(x, 1/16), 16)','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 4);
imshow(lena_32);
title('imresize(imresize(x, 1/32), 32)','fontname','雅痞-繁','Color','k','FontSize',14);

%part2
lena_nearest = imresize(x, 1/8, 'nearest');
lena_bilinear = imresize(x, 1/8, 'bilinear');
lena_bicubic  = imresize(x, 1/8, 'bicubic');

figure(2),
subplot(1, 3, 1);
imshow(lena_nearest);
title('nearest','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(1, 3, 2);
imshow(lena_bilinear);
title('bilinear','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(1, 3, 3);
imshow(lena_bicubic);
title('bicubic','fontname','雅痞-繁','Color','k','FontSize',14);

