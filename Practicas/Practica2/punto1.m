function punto1(img, c)

 im_res = punto1a(img, c);

 figure
 subplot(2,1,1)
 imshow(img);
 title("Imagen original")
 subplot(2,1,2)
 imshow(im_res)
 title("Saturacion por c")
 [im_sum, im_cuad, im_log] = punto1b(img, 10);
figure
subplot(2,2,1)
imshow(img)
 title("Imagen original")
subplot(2,2,2)
imshow(im_sum)
 title("saturacion mas c")
subplot(2,2,3)
imshow(im_cuad)
 title("saturacion al cuadrado por c")
subplot(2,2,4)
imshow(im_log)
 title("logaritmo de saturacion por c")

endfunction