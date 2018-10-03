function res = convol(img, mask)
  mask_size = size(mask);
  img_size = size(img);
  res = img;
  
  padded_img = add_padding(img, mask_size);
  r = floor(mask_size(1)/2);
  c = floor(mask_size(2)/2);

  for i = r+1 : padded_img(1) - r - 1
    for j = c+1 : padded_img(2) - c - 1
      submatrix = padded_img(i-r:i+r, i-c:i+c);
      submatrix = submatrix .* mask;
      res = sum(sum(submatrix));
    endfor    
  endfor
endfunction