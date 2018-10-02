function punto1(img, mascara_bajo3, mascara_bajo5)

 pasa_bajo3 = convol(img, mascara_bajo3);
 pasa_bajo5 = convol(img, mascara_bajo5);
 
figure
subplot(2,2,1)
imshow(img)
title("Imagen") 
 
 pasa_alto3 = img - pasa_bajo3;

 pasa_alto5 = img - pasa_bajo5;

endfunction