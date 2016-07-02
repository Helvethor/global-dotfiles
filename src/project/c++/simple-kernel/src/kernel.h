#include <CImg.h>

using namespace cimg_library;

class Kernel
{

public:

	template <typename T>
	static CImg< T > grayscale_weighted(CImg< T > image)
	{
		CImg< T > grayscale(image.width(), image.height(), 1, 1, 0);

		cimg_forXY(image, x, y){
			int R = (int) image(x, y, 0, 0);
			int G = (int) image(x, y, 0, 1);
			int B = (int) image(x, y, 0, 2);
			grayscale(x, y) = (T)(0.299 * R + 0.587 * G + 0.114 * B);
		}

		return grayscale;
	}

	template <typename T>
	static CImg< T > grayscale(CImg< T > image)
	{
		if (image.depth() == 3){
			CImg< T > grayscale(image.width(), image.height(), 1, 1, 0);

			cimg_forXY(image, x, y){
				int R = (int) image(x, y, 0, 0);
				int G = (int) image(x, y, 0, 1);
				int B = (int) image(x, y, 0, 2);
				grayscale(x, y) = (T)((R + G + B) / 3);
			}

			return grayscale;
		}

		else
			return image;
	}

	template <typename T>
	static CImg< T > sharpen_diagonal(CImg< T > image)
	{
		CImg< T > new_image(image);
		CImg_3x3(N, T);

		cimg_for3x3(image, x, y, 0, 0, N, T){
			T sum = Npp + Nnn - Npn - Nnp;
			new_image(x, y) = sum >= 128 ? sum: 0;
		}

		return new_image;
	}

	template <typename T>
	static CImg< T > sharpen_homogene(CImg< T > image)
	{
		CImg< T > new_image(image);
		CImg_3x3(N, T);

		cimg_for3x3(image, x, y, 0, 0, N, T){
			T sum = -(Npp + Nnn + Npn + Nnp + Ncn + Ncp + Npc + Nnp) + Ncc * 8;
			new_image(x, y) = sum >= 128 ? sum: 0;
		}

		return new_image;
	}
};
