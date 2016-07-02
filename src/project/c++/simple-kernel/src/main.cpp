#include <iostream>
#include <CImg.h>

#include "kernel.h"

using namespace cimg_library;

typedef float pix_t;

int main (int argc, char * argv [])
{
	if (argc != 2){
		std::cout << "Usage: " << argv[0] << " <image_path>" << std::endl;
		exit(1);
	}

	char * image_path = argv[1];
	char * kernel = argv[2];

	CImg<pix_t> image(image_path);
	CImgDisplay display(image, image_path);

	CImg< pix_t > grayscale = Kernel::grayscale(image);	
	CImgDisplay gray_display(grayscale, "Grayscale");
	
	CImg< pix_t > grayscale_weighted = Kernel::grayscale_weighted(image);	
	CImgDisplay gray_w_display(grayscale_weighted, "Grayscale weighted");

	CImg< pix_t > sharpen_d = Kernel::sharpen_diagonal(grayscale_weighted);	
	CImgDisplay sharpen_d_display(sharpen_d, "Sharpen diagonal");

	CImg< pix_t > sharpen_h = Kernel::sharpen_homogene(grayscale_weighted);	
	CImgDisplay sharpen_h_display(sharpen_h, "Sharpen homogene");

	while (!display.is_closed())
	{
		display.wait();
	}
}

