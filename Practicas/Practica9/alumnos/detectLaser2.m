function [ Lx, Ly ] = detectLaser2( I, mask )
% Dada una imagen a color inputImage detecta los píxeles del láser
% y devuelve sus coordenadas en los vectores [Lx,Ly]
% Opcionalmente, puede tomar una imagen binaria mask que indica
% la región de búsqueda

%% Filtro de la imagen

convVec = [ 1 4 6 4 1 ]
convMatrix = (convVec' * convVec)/256;

I_d = double(I);
if exist('mask', 'var')
    I_d = I_d.*repmat(mask(2:end,:,:), [1,1,3]);
end

filteredImage = zeros(size(I));
filteredImage(:,:,1) = imfilter(I_d(:,:,1), convMatrix, 'same');
filteredImage(:,:,2) = imfilter(I_d(:,:,2), convMatrix, 'same');
filteredImage(:,:,3) = imfilter(I_d(:,:,3), convMatrix, 'same');

v =  filteredImage(:,:,1) - (filteredImage(:,:,2) + filteredImage(:,:,3))/2;

avgRowMax = mean(max(v'))

v(v < 0.8*avgRowMax) = 0;
[Ly, Lx] = find(v > 0);

end
