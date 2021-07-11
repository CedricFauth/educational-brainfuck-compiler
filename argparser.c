#include <string.h>
#include <stdio.h>
#include "argparser.h"

static char *inpstr = NULL, *outstr = NULL;

int parse(const int n, char **v) {
	if (n != 4) return -1;
	for (int i = 1; i < n; ++i) {
		if (strcmp(v[i],"-o") == 0 && i < n-1) {
			outstr = v[++i];
		} else {
			inpstr = v[i];
		}
	}
	return !(inpstr && outstr);
}

char *in_filename() {
	return inpstr;
}

char *out_filename() {
	return outstr;
}

