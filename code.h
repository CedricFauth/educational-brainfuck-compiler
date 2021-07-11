#ifndef CODE_BFC_H
#define CODE_BFC_H

typedef enum token {
	INC='+',
	DEC='-',
	NEXT='>',
	PREV='<',
	WHILE='[',
	END=']',
	PUT='.',
	GET=','
} token_t;

typedef struct ir_code {
	char *data;
	size_t length;
	size_t capacity;
} ir_code_t;

int read(ir_code_t *ir, char *fn);
void clear(ir_code_t *ir);

#endif