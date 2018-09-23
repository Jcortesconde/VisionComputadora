function res = compresion_rango_dinamico(imagen)
  R = max(max(imagen))
  L = 256
  
  c = (L-1) / log(1 + R)
  
  res = log(1 + imagen)*c;
endfunction