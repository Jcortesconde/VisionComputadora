c1 = imread("../../ImagenesCaras/cara1.png");
c2 = imread("../../ImagenesCaras/cara2.png");
figure;
subplot(1,2,1);
title("Cara original A");
imshow(c1);
subplot(1,2,2);
title("Cara original B");
imshow(c2);


resta1 = c1 - c2;
resta2 = c2 - c1;

figure;
subplot(1,2,1);
title("A - B");
imshow(resta1);
subplot(1,2,2);
title("B - A");
imshow(resta2);


suma = c1 + c2;
figure;
title("A + B");
imshow(suma);