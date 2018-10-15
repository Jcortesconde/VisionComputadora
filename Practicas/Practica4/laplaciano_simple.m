function bordes = laplaciano_simple(img)
mask = [0 1 0; 1 -4 1; 0 1 0];

bordes = uint8(abs(conv2(img, mask, 'same')));

endfunction