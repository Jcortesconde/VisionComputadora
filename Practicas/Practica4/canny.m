function edge = canny(img, masck, gradient_method, low_threshold, high_threshold)
  %mascara es o la identidad en la convolusion si no tiene ruido
  % o un pasabajo para sacarlo, recomendamos el gaussiano. (depende el ruido que
  % pensamos que tiene la imagen.
 
 aux = conv2(img, mask, 'same');
 aux, grad_dir = intesity_gradient(aux, gradient_method);
 grad_dir = compress_grad_dir(grad_dir);
 aux = non_maximum(aux,grad_dir);
 aux = hysteresis(aux, low_threshold, high_threshold);
 edge = aux;
endfunction