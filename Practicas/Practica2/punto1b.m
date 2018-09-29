function [im_sum, im_cuad, im_log] = punto1b(im, c)
conv = uint8(255*rgb2hsv(im));
im_sum = conv;
im_sum(:,:,2) = c + conv(:,:,2);

im_sum = hsv2rgb(im_sum);

im_cuad = conv;

im_cuad(:,:,2) = c * conv(:,:,2).^2;


im_log = conv;
im_log(:,:,2) = uint8(log(c * conv(:,:,2)));

endfunction