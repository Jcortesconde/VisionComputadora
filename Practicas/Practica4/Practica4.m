function Practica4(dir_lena, dir_test)

lena = imread(dir_lena);
test = imread(dir_test);
fprintf('Practica tres, aprete enter para pasar de ejercicio.\n');
pause;
fprintf('Punto 1.\n');
[lena_g, lena_r, test_g, test_r] = punto1(lena, test);


fprintf('Punto 2.\n');
threshold = 200;
size_square = 5;
punto2(lena_g, lena_r, test_g, test_r, threshold, size_square);
pause;
close all;


endfunction