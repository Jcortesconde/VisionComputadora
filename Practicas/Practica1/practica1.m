function practica1(src_img1, src_img2, src_imgosc, src_imgec, src_imgcolor)
%resolucion de la practica1 los parametros son las direcciones de las imagenes del usuario.
%img1 e img2 son blanco y negro src_imgosc es una imagen oscura,
% src_imgec es una imagen a ecualizar y imgcolor es con color.
c1 = imread(src_img1);
c2 = imread(src_img2);
osc = imread(src_imgosc);
ec = imread(src_imgec);
color = imread(src_imgcolor);

fprintf('Practica uno, aprete enter para pasar de ejercicio.\n');
pause;
fprintf('Punto 1.\n');
punto1(c1, c2, osc)

fprintf('=======================================================\n');

fprintf('Punto 2.\n Negativo en escala de gris\n');
figure
subplot(1,2,1);
imshow(c1);
title("Original")

subplot(1,2,2)
imshow(negativo(c1));
title("Negativo")

pause;
close;
fprintf(" Negativo de color\n");
figure
subplot(1,2,1);
imshow(color);
title("Original")

subplot(1,2,2)
imshow(negativo(color));
title("Negativo")

pause;
close;
fprintf('=======================================================\n');
umb = 150;
fprintf('Punto 3.\n Umbral = %d.\n Umbral en escala de gris\n', umb);

subplot(1,2,1);
imshow(c1);
title("Original")
subplot(1,2,2)
imshow(umbral(c1, umb));
title("Umbral")
pause;
close;

fprintf(" Umbral en color.\n")
subplot(1,2,1);
imshow(color);
title("Original")

subplot(1,2,2)
imshow(umbral(color,150));
title("umbral")

pause
close all
fprintf('=======================================================\n');
fprintf('Punto 4.\n Bitplane en blanco y negro.\n');
bit_plane(c1);
pause
close all
fprintf(' Bitplane en color.\n');
bit_plane(color);
pause
close all

fprintf('=======================================================\n');
fprintf('Punto 5\n');
crear_histograma(c1);
pause
close

fprintf('=======================================================\n');
fprintf('Punto 6\n');

fprintf('=======================================================\n');
fprintf('Punto 7\n');

fprintf('=======================================================\n');
fprintf('Punto 8\n');
