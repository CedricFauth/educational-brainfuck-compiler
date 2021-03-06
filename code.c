#include <stdlib.h>
#include <stdio.h>
#include "code.h"

#define INIT_SIZE 8

void *resize(ir_code_t *ir, size_t n) {
	ir->data = realloc(ir->data, n*sizeof(*ir->data));
	ir->capacity = n;
	return ir->data;
}

void clear(ir_code_t *ir) {
	ir->capacity = 0;
	ir->length = 0;
	free(ir->data);
}

int add(ir_code_t *ir, char sym) {
	if (ir->length == ir->capacity) {
		if (!resize(ir, ir->capacity*2)) {
			return -1;
		}
	}
	ir->data[ir->length++] = sym;
	return 0;
}

int read_ir(ir_code_t *ir, char *fn) {
	ir->length = 0;
	ir->data = NULL;
	if (!resize(ir, INIT_SIZE)) return -1;

	if (!ir) return -1;
	FILE *fp = fopen(fn,"r");
	if (!fp) {
		return -1;
	}

	for (char c = getc(fp); c != EOF; c = getc(fp)) {
		if (!((c >= 43 && c <= 46) 
			|| c == '[' || c == ']'
			|| c == '<' || c == '>')) continue;
		if (add(ir, c) != 0) {
			clear(ir);
			fclose(fp);
			return -1;
		}
	}
	
	fclose(fp);
	return 0;
}
