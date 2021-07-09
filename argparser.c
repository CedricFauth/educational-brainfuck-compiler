#include "argparser.h"

static char **args;

int parse(const int n, char **v) {
	if (n != 2) return 1;
	args = v;
	return 0;
}

char *filename() {
	return args[1];
}

