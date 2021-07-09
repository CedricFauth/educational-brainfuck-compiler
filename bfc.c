#include <stdio.h>
#include <stdlib.h>

#include "argparser.h"
#include "code.h"

#if 1
	#define DEBUGS(s) puts(s) 
	#define DEBUG(f_, ...) printf((f_), __VA_ARGS__)
#else
	#define DEBUGS(s)
	#define DEBUG(f_)
#endif

int main(int argc, char **argv)
{
	if (parse(argc, argv) != 0) {
		DEBUG("usage: %s FILENAME\n", argv[0]);
		exit(EXIT_FAILURE);
	}

	char *fname = filename();
	DEBUG("reading file %s...\n", fname);
	ir_code_t ir;
	if (read(&ir, fname) != 0) {
		perror("file error");
		exit(EXIT_FAILURE);
	}

	DEBUG("IR codesize: %lu of %lu\n", ir.length, ir.capacity);
	for (int i = 0; i < ir.length ; ++i) DEBUG("%c", ir.data[i]); DEBUGS("");

	clear(&ir);
	exit(EXIT_SUCCESS);
}

