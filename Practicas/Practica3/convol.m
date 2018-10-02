function res = convol(img, mask):
  mask_size = size(mascara);
  img_size = size(img);
  res = img;
  
  padded_img = add_padding(img, mask_size);
  r = floor(mask_size(1)/2);
  c = floor(mask_size(2)/2);

  for i = r_start : img_size(1)
    for j = c_start : img_size(2)
      submatrix = A(i-r:i+r, i-c:i+c);
      submatrix = submatrix .* mask;
      res = sum(sum(submatrix))
    endfor    
  endfor
endfunction