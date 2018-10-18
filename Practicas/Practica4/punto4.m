function punto4(img)
  gausses = [3 5];
  vecinity = [3 5];
  mets = [ 1 2 3 4]
  mets_name = ["harris"; "triggs"; "szeliski"; "tomasi"];
  factor = 1;
  for i = mets
    %if(mets(i,:) == "harris")
    %  factor = 1;
    %endif
    
    %if(mets(i,:) == "triggs")
    %  factor = 0.5;
    %endif
    for j = gausses
        R = corner_detection(img, i, double(factor)/double(i), j);
      for k = vecinity
          sol = taking_local_maximums(R,80, k);
          figure
          imshow(sol);
          tit = [mets_name(i,:) "fctr:"  num2str(factor) " gauss:" num2str(j) " vec:" num2str(k)]
          title(tit)
      endfor
    endfor
    printf("Apretar enter para seguir con los otros metodos");
    pause;
    close all;
  endfor

 endfunction