#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <sys/wait.h>
#include <unistd.h>

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
	if (read_ir(&ir, ifname) != 0) {
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

	DEBUG("writing to %s...\n", "tmp.asm");
	if (generate(&ir, "tmp.asm") != 0 ) {
		perror("error");
		clear(&ir);
		exit(EXIT_FAILURE);
	}

	char *ofname = out_filename();

	if (fork()== 0) {
		execlp("nasm", "nasm", "-f", "macho64", "tmp.asm", "-o", "tmp.o", NULL);
		perror("nasm cannot be called");
	} else {
        wait(NULL);
		DEBUGS("nasm has terminated");
        if (fork()== 0) {
			execlp("ld", "ld", "-macosx_version_min", "10.13", "-arch", "x86_64",
					"-L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib", 
					"-lSystem", "-o", ofname, "tmp.o", "-no_pie", NULL);
			perror("ld cannot be called");
		} else {
			wait(NULL);
			DEBUGS("ld has terminated");
		}
    }
	
	clear(&ir);
	exit(EXIT_SUCCESS);
}

