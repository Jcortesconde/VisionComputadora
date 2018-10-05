function sharp = unsharp_masking(img, mascara, const)

pasa_bajo = uint8(conv2(img, mascara,"same"));

pasa_alto = img - pasa_bajo;

sharp = uint8(img + pasa_alto * const);


endfunction