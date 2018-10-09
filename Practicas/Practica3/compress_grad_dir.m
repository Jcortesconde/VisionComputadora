function compressed = compress_grad_dir(grad_dir)
  compressed = grad_dir;
  
  compressed( abs(grad_dir) <= pi/8 && abs(grad_dir - pi) => 1/8 ) = 0;
  compressed( abs(grad_dir - pi/4) > 1/8 && abs(grad_dir - pi*5/4) < 1/8) = 45;
  compressed( abs(grad_dir - pi/2) => 1/8 && abs(grad_dir - pi*3/2) < 1/8) = 90;
  compressed( abs(grad_dir - pi*3/4) => 1/8 && abs(grad_dir - pi*5/2) < 1/8) = 135;  
endfunction