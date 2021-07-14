#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

#include "bfc.h"
#include "argparser.h"
#include "code.h"
#include "gen.h"
#include "opti.h"

int main(int argc, char **argv)
{
	if (parse(argc, argv) != 0) {
		DEBUG("usage: %s -o OUTFILE INFILE\n", argv[0]);
		exit(EXIT_FAILURE);
	}

	char *ifname = in_filename();
	DEBUG("reading file %s...\n", ifname);
	ir_code_t ir;
	if (read(&ir, ifname) != 0) {
		perror("file error");
		exit(EXIT_FAILURE);
	}

	DEBUG("IR codesize: %lu of %lu\n", ir.length, ir.capacity);
	for (int i = 0; i < ir.length ; ++i) {
		size_t c = ir.data[i];
		DEBUG("%lu(%c) ", c, iscntrl(c) ? '\0' : (char)c);
	}
	DEBUGS("");

	// optimizer
	optimize(&ir);

	for (int i = 0; i < ir.length ; ++i) {
		size_t c = ir.data[i];
		DEBUG("%lu(%c) ", c, iscntrl(c) ? '\0' : (char)c);
	}
	DEBUGS("");

	char *ofname = out_filename();
	DEBUG("writing to %s...\n", ofname);
	if (generate(&ir, ofname) != 0 ) {
		perror("error");
		clear(&ir);
		exit(EXIT_FAILURE);
	}
	
	clear(&ir);
	exit(EXIT_SUCCESS);
}

