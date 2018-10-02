function res = add_padding(img, mask_size):
  r = floor(mask_size(1)/2);
  c = floor(mask_size(2)/2);
 
  upper_padding = ones(r,1)*img(1,:);
  lower_padding = ones(r,1)*img(:,size(img)(1));
  
  res = [ upper_padding ; img; lower_padding ];
 
  left_padding = res(:,1)*ones(c,1)';
  right_padding = res(:,size(res)(2))*ones(c,1)';
  
  res = [ left_padding res right_padding ]

 endfunction
  