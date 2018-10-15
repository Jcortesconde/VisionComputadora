function umbraleada = hysteresis(no_maximos, grad_dir, u_min, u_max)
    bordes = zeros(size(no_maximos));
    bordes(no_maximos > u_max) = 1;
    intensity_cols = size(no_maximos)(1);
    aux = bordes;
    
    v_i = 0;
    v_d = 0;
    do
      for i = find(bordes == 1)
        switch(grad_dir(i))
          case {0}
            v_i = -1;
            v_d = +1;
          case {45}
            v_i = intensity_cols + 1;
            v_d = -intensity_cols + 1;
          case {90}
            v_i = -intensity_cols;
            v_d = intensity_cols;
          case {135}
            v_i = intensity_cols - 1;
            v_d = -intensity_cols + 1;
         endswitch
         
         if (no_maximos(i+v_i) > u_min) 
           bordes(i+v_i) = 1; 
         endif
         
         if (no_maximos(i+v_d) > u_min) 
           bordes(i+v_d) = 1; 
         endif
      endfor       
    until ( aux == bordes )
    
    umbraleada = zeros(size(no_maximos));
    umbraleada += bordes.*no_maximos;
endfunction