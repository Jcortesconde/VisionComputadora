function punto8(img_lena, img_test)

	lena_gauss_roberts = roberts(ruido_gaussiano(img_lena, 0.3,0));
	lena_gauss_prewitt = prewitt(ruido_gaussiano(img_lena, 0.3,0));
	lena_gauss_sobel = sobel(ruido_gaussiano(img_lena, 0.3,0));

	lena_rayleigh_roberts = roberts(ruido_rayleigh(img_lena, 1));
	lena_rayleigh_prewitt = prewitt(ruido_rayleigh(img_lena, 1));
	lena_rayleigh_sobel = sobel(ruido_rayleigh(img_lena, 1));

	lena_salted_roberts = roberts(salt_pepper(img_lena, 0.1, 0.9));
	lena_salted_prewitt = prewitt(salt_pepper(img_lena, 0.1,0.9));
	lena_salted_sobel = sobel(salt_pepper(img_lena, 0.1,0.9));

	test_gauss_roberts = roberts(ruido_gaussiano(img_test, 0.3,0));
	test_gauss_prewitt = prewitt(ruido_gaussiano(img_test, 0.3,0));
	test_gauss_sobel = sobel(ruido_gaussiano(img_test, 0.3,0));

	test_rayleigh_roberts = roberts(ruido_rayleigh(img_test, 1));
	test_rayleigh_prewitt = prewitt(ruido_rayleigh(img_test, 1));
	test_rayleigh_sobel = sobel(ruido_rayleigh(img_test, 1));

	test_salted_roberts = roberts(salt_pepper(img_test, 0.1, 0.9));
	test_salted_prewitt = prewitt(salt_pepper(img_test, 0.1,0.9));
	test_salted_sobel = sobel(salt_pepper(img_test, 0.1,0.9));


	figure
	subplot(1,3,1)
	imshow(lena_gauss_roberts)
	title("Lena Gauss Roberts")
	subplot(1,3,2)
	imshow(lena_gauss_prewitt)
	title("Lena Gauss Prewitt")
	subplot(1,3,3)
	imshow(lena_gauss_sobel)
	title("Lena Gauss Sobel")

	printf("Apreta enter para el proximo conjunto de imagenes");
	pause;
	close all;

	figure
	subplot(1,3,1)
	imshow(lena_rayleigh_roberts)
	title("Lena rayleigh Roberts")
	subplot(1,3,2)
	imshow(lena_rayleigh_prewitt)
	title("Lena rayleigh Prewitt")
	subplot(1,3,3)
	imshow(lena_rayleigh_sobel)
	title("Lena rayleigh Sobel")

	printf("Apreta enter para el proximo conjunto de imagenes");
	pause;
	close all;

	figure
	subplot(1,3,1)
	imshow(test_salted_roberts)
	title("test Salt & Pepper Roberts")
	subplot(1,3,2)
	imshow(test_salted_prewitt)
	title("test Salt & Pepper Prewitt")
	subplot(1,3,3)
	imshow(test_salted_sobel)
	title("test Salt & Pepper Sobel")

		figure
	subplot(1,3,1)
	imshow(test_gauss_roberts)
	title("test Gauss Roberts")
	subplot(1,3,2)
	imshow(test_gauss_prewitt)
	title("test Gauss Prewitt")
	subplot(1,3,3)
	imshow(test_gauss_sobel)
	title("test Gauss Sobel")

	printf("Apreta enter para el proximo conjunto de imagenes");
	pause;
	close all;

	figure
	subplot(1,3,1)
	imshow(test_rayleigh_roberts)
	title("test rayleigh Roberts")
	subplot(1,3,2)
	imshow(test_rayleigh_prewitt)
	title("test rayleigh Prewitt")
	subplot(1,3,3)
	imshow(test_rayleigh_sobel)
	title("test rayleigh Sobel")

	printf("Apreta enter para el proximo conjunto de imagenes");
	pause;
	close all;

	figure
	subplot(1,3,1)
	imshow(test_salted_roberts)
	title("test Salt & Pepper Roberts")
	subplot(1,3,2)
	imshow(test_salted_prewitt)
	title("test Salt & Pepper Prewitt")
	subplot(1,3,3)
	imshow(test_salted_sobel)
	title("test Salt & Pepper Sobel")

	printf("Para terminar el ejercicio");
	pause;
	close all;

endfunction