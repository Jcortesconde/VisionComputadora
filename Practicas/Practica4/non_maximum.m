
function grad = non_maximum(intensity,grad_dir)


[intensity_cols,  intensity_rows] = size(intensity);

intensity = [ zeros(intensity_cols, 1)  intensity  zeros(intensity_cols, 1)];
intensity = [ zeros(intensity_rows, 1)  intensity  zeros(intensity_rows, 1)];
grad = zeros(size(intensity));
intensity_cols++;
intensity_rows++;
%%% Gradientes cero;

ceros = find(grad_dir == 0);
values = (intensity(ceros) > intensity(ceros + intensity_cols) & intensity(ceros) > intensity(ceros - intensity_cols));
grad(grad_dir == 0) += values .* intensity(ceros);  
  

%% Gradientes 45
ceros = find(grad_dir == 45);
values = (intensity(ceros) > intensity(ceros + intensity_cols - 1) & intensity(ceros) > intensity(ceros - intensity_cols + 1));
grad(grad_dir == 45) += values .* intensity(ceros);  

%% Gradientes 90
ceros = find(grad_dir == 90);
values = (intensity(ceros) > intensity(ceros - 1) & intensity(ceros) > intensity(ceros + 1));
grad(grad_dir == 90) += values .* intensity(ceros);  

%% Gradientes 135
ceros = find(grad_dir == 135);
values = (intensity(ceros) > intensity(ceros + intensity_cols + 1) && intensity(ceros) > intensity(ceros - intensity_cols - 1));
grad(grad_dir == 135) += values .* intensity(ceros);  

grad = grad(2:intensity_cols-1, 2:intensity_rows-1);
endfunction