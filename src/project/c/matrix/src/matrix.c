#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

#include "matrix.h"

void matrix_allocate(matrix * A)
{
	size_t i;

	if (A->m_max == 0)
		A->m_max = 3;

	if (A->n_max == 0)
		A->n_max = 3;

	A->a = malloc(sizeof(float *) * A->m_max);

	for (i = 0; i < A->m_max; i++) {
		A->a[i] = malloc(sizeof(float) * A->n_max);
	}
}

void matrix_free(matrix * A)
{
	size_t i;
	
	for (i = 0; i < A->m_max; i++) {
		free(A->a[i]);
	}

	free(A->a);
}

void static matrix_realloc_n(matrix * A)
{
	size_t i;

	A->n_max *= 2;

	for (i = 0; i < A->m_max; i++)
		A->a[i] = realloc(A->a[i], sizeof(float) * A->n_max);
}

void static matrix_realloc_m(matrix * A)
{
	size_t i;

	A->m_max *= 2;

	A->a = realloc(A->a, sizeof(float) * A->m_max);
}

void matrix_set(matrix * A, size_t i, size_t j, float val)
{
	while (j > A->n_max)
		matrix_realloc_n(A);

	while (i > A->m_max)
		matrix_realloc_m(A);

	A->a[i][j] = val;
}

int matrix_fill(matrix * A, char * input)
{
	size_t input_len = strlen(input);
	size_t i, j;
	float val;
	char * token, buf [256];

	if (input[0] != '{' || input[input_len - 1] != '}') {
		errno = EINVAL;
		perror("matrix_fill");
		exit(-1);
	}

	input[input_len - 1] = '\0';
	input++, input_len -= 2;

	i = 0;

	while (*input != '\0') {
		printf("input: %s\n", input);
		j = 0;

		if (*input == '{') {
			input++;

			while (1) {

				val = strtof(input, &input);
				printf("(%d,%d) = %f\n", i, j, val);
				matrix_set(A, i, j, val);
				j++;

				if (*input == ',')
					input++;

				else if (*input == '}')
					break;

				else {
					errno = EINVAL;
					perror("matrix_fill");
					exit(-1);
				}
			}

			i++, input++;
			A->m = i, A->n = j;
		}

		else if (*input == ',') {
			input++;
		}

		else {
			errno = EINVAL;
			perror("matrix_fill");
			exit(-1);
		}
	}
}

void matrix_print(matrix * A)
{
	size_t i, j;

	printf("A: m = %d, n = %d\n", A->m, A->n);

	for (i = 0; i < A->m; i++) {
		for (j = 0; j < A->n; j++) {
			printf("\t%.1f,", A->a[i][j]);
		}
		printf("\n");
	}
}
