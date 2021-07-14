#include <ctype.h>
#include <stdio.h>
#include "opti.h"
#include "bfc.h"

void optimize(ir_code_t *ir) {

	for (size_t i = 0; i < ir->length; ++i) {
		size_t count = 1;
		char current = ir->data[i];

		if (current != '>' && current != '<' 
			&& current != '+' && current != '-') continue;
		DEBUG("current: %c\n", (char)current);

		for (size_t j = i+1; j < ir->length; ++j) {
			//DEBUG("\tcmp: %c\n", (char)ir->data[j]);
			if (ir->data[j] != current) break;
			ir->data[j] = TOK_NOOP;
			++count;
		}

		if (count == 1) continue;

		DEBUG("found %lux code: %c\n", count, (char)current);
		switch (current) {
		case TOK_PREV:
			ir->data[i] = TOK_SHORTPREV;
			break;
		case TOK_NEXT:
			ir->data[i] = TOK_SHORTNEXT;
			break;
		case TOK_DEC:
			ir->data[i] = TOK_SHORTDEC;
			break;
		case TOK_INC:
			ir->data[i] = TOK_SHORTINC;
			break;
		default:
			DEBUGS("optimizer: unknown optimization symbol");
			break;
		}
		ir->data[i+1] = count;
		i += count-1;
	}
}
