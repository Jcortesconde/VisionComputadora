function sharp = unsharp_masking(img, mascara, const)

pasa_bajo = conv2(img, mascara,"same");

pasa_alto = img - pasa_bajo;

sharp = img + pasa_alto * const;


endfunction