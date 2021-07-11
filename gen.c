#include <stdio.h>
#include "code.h"

char *header = "";

int generate(ir_code_t *ir, char fn) {
	FILE *fp = fopen(fn, "w");
	if (!fp) return -1;

	fclose(fp);
}

