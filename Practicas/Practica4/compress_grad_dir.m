function compressed = compress_grad_dir(grad_dir)
  compressed = grad_dir;
  
  portion = 1/8;
  compressed( abs(grad_dir) <= portion | abs(grad_dir - pi) < portion ) = 0;
  compressed( abs(grad_dir) - 1/4 <= portion | abs(grad_dir) - 5/4 < portion) = 45;
  compressed( abs(grad_dir) - 1/2 <= portion | abs(grad_dir) - 3/2 < portion) = 90;
  compressed( abs(grad_dir) - 3/4 <= portion | abs(grad_dir) - 5/2 < portion) = 135;  
endfunction