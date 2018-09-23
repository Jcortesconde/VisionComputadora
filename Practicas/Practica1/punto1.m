c1 = imread("../../ImagenesCaras/cara1.png");
c2 = imread("../../ImagenesCaras/cara2.png");
figure
subplot(1,2,1)
imshow(c1)
title("Cara original A")
subplot(1,2,2)
imshow(c2)
title("Cara original B")


%punto A
resta1 = c1 - c2;
resta2 = c2 - c1;

figure
subplot(1,2,1)
imshow(resta1)
title("A - B")
subplot(1,2,2)
imshow(resta2)
title("B - A")


suma = c1 + c2;
figure;
imshow(suma)
title("A + B")

prod = c1.*c2;
figure;
imshow(prod)
title("A*B")

%punto B
scalar = 2;
prod1 = c1*scalar;
prod2 = c2*scalar;
figure
subplot(1,2,1)
imshow(prod1)
title("A*escalar")
subplot(1,2,2)
imshow(prod2)
title("B*escalar")

%Punto C
