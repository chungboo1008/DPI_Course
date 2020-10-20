%pollen
pollen = imread('pollen.tif');

%part1
figure(1),
subplot(2, 2, 1);
imshow(pollen);
title('pollen.tif','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 2);
imhist(pollen);
title('histogram','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 3);
pollen_histeq = histeq(pollen);
imshow(pollen_histeq);
title('equalization','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 4);
imhist(pollen_histeq);
title('histogram equalization','fontname','雅痞-繁','Color','k','FontSize',14);

%part2
M = stretchlim(pollen)
pollen_imadjust = imadjust(pollen, M, [0,1]);

figure(2),
subplot(2, 2, 1);
imshow(pollen);
title('pollen.tif','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 2);
imhist(pollen);
title('histogram','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 3);
imshow(pollen_imadjust);
title('after intensity','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 4);
imhist(pollen_imadjust);
title('after intensity histogram','fontname','雅痞-繁','Color','k','FontSize',14);


%aerial
aerial = imread('aerial.tif');

%part1
figure(3),
subplot(2, 2, 1);
imshow(aerial);
title('aerial.tif','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 2);
imhist(aerial);
title('histogram','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 3);
aerial_histeq = histeq(aerial);
imshow(aerial_histeq);
title('equalization','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 4);
imhist(aerial_histeq);
title('histogram equalization','fontname','雅痞-繁','Color','k','FontSize',14);

%part2
%N = stretchlim(aerial)
aerial_imadjust = imadjust(aerial, [0.6 1], [0,1]);

figure(4),
subplot(2, 2, 1);
imshow(aerial);
title('aerial.tif','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 2);
imhist(aerial);
title('histogram','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 3);
imshow(aerial_imadjust);
title('after intensity','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 4);
imhist(aerial_imadjust);
title('after intensity histogram','fontname','雅痞-繁','Color','k','FontSize',14);




