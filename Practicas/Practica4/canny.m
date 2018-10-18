function edge = canny(img, mask, gradient_method, low_threshold, high_threshold)
  %mascara es o la identidad en la convolusion si no tiene ruido
  % o un pasabajo para sacarlo, recomendamos el gaussiano. (depende el ruido que
  % pensamos que tiene la imagen.
 
 aux = uint8(conv2(img, mask, 'same'));
 [aux, grad_dir] = intesity_gradient(aux, gradient_method);
 grad_dir = compress_grad_dir(grad_dir);
 aux = non_maximum(aux,grad_dir);
 aux = hysteresis(aux, grad_dir, low_threshold, high_threshold);
 
% edge = aux;
 edge = deriche(aux, grad_dir);
endfunction