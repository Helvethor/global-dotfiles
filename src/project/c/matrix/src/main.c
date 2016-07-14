#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "matrix.h"

int main (int argc, char * argv [])
{
	matrix A;

	memset(&A, 0, sizeof(matrix));
	matrix_allocate(&A);
	matrix_fill(&A, argv[1]);
	matrix_print(&A);
}
