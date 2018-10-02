function punto3(img_lena, img_test, mascara_baja3)

suavizado = conv2(img_lena, mascara_baja3, "same");

sharp = unsharp_masking(img, mascara_baja3);

endfunction