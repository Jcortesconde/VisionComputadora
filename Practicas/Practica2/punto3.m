function punto3(im)
addpath("../Practica1")
conv = rgb2hsv(im);

figure
subplot(2,2,1);
imshow(im);
title("Imagen original");
subplot(2,2,2);
imshow(conv(:,:,1));
title("Hue");
subplot(2,2,3);
imshow(conv(:,:,2));
title("Saturation");
subplot(2,2,4);
imshow(conv(:,:,3));
title("Value");

hue_eq = ecualizar_histograma(uint8(255*conv(:,:,1)), 1);
sat_eq = ecualizar_histograma(uint8(255*conv(:,:,2)), 1);
val_eq = ecualizar_histograma(uint8(255*conv(:,:,3)), 1);

figure
subplot(3,2,1);
imshow(conv(:,:,1));
title("Hue");
subplot(3,2,2);
imshow(hue_eq);
title("Hue ecualizada");
subplot(3,2,3);
imshow(conv(:,:,2));
title("Saturation");
subplot(3,2,4);
imshow(sat_eq);
title("saturation ecualizada");
subplot(3,2,5);
imshow(conv(:,:,3));
title("value");
subplot(3,2,6);
imshow(val_eq);
title("value ecualizada");

endfunction