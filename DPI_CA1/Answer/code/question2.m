x = imread('cameraman.tif');
xd = double(x);

c0 = mod(xd, 2);
c1 = mod(floor(xd / 2), 2);
c2 = mod(floor(xd / 4), 2);
c3 = mod(floor(xd / 8), 2);
c4 = mod(floor(xd / 16), 2);
c5 = mod(floor(xd / 32), 2);
c6 = mod(floor(xd / 64), 2);
c7 = mod(floor(xd / 128), 2);

%part1
figure(1),
subplot(2, 4, 1);
imshow(c0);
title('c0','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 4, 2);
imshow(c1);
title('c1','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 4, 3);
imshow(c2);
title('c2','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 4, 4);
imshow(c3);
title('c3','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 4, 5);
imshow(c4);
title('c4','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 4, 6);
imshow(c5);
title('c5','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 4, 7);
imshow(c6);
title('c6','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 4, 8);
imshow(c7);
title('c7','fontname','雅痞-繁','Color','k','FontSize',14);

%part2
ct = x > 127;
all(c7(:) == ct(:))

%part3
%xc = 2*(2*(2*(2*(2*(2*(2*c7+c6)+c5)+c4)+c3)+c2)+c1)+c0;
plane_c7 = 128*c7;
plane_c7c6 = 128*c7 + 64*c6;
plane_c7toc4 = 128*c7 + 64*c6 + 32*c5 + 16*c4;

figure(2),
subplot(2, 2, 1);
imshow(x);
title('original image','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 2);
imshow(uint8(plane_c7));
title('only using plane c7','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 3);
imshow(uint8(plane_c7c6));
title('using plane c7 and c6','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 4);
imshow(uint8(plane_c7toc4));
title('using plane c7 to c4','fontname','雅痞-繁','Color','k','FontSize',14);




