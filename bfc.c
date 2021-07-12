#include <stdio.h>
#include <stdlib.h>

#include "argparser.h"
#include "code.h"
#include "gen.h"
#include "bfc.h"

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
	for (int i = 0; i < ir.length ; ++i) DEBUG("%c", ir.data[i]); DEBUGS("");

	// optimize(ir);

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

