#ifndef CODE_BFC_H
#define CODE_BFC_H

typedef enum token {
	TOK_NOOP,
	TOK_SHORTINC,
	TOK_SHORTDEC,
	TOK_SHORTNEXT,
	TOK_SHORTPREV,
	TOK_INC='+',
	TOK_DEC='-',
	TOK_NEXT='>',
	TOK_PREV='<',
	TOK_WHILE='[',
	TOK_END=']',
	TOK_PUT='.',
	TOK_GET=','
} token_t;

typedef struct ir_code {
	size_t *data;
	size_t length;
	size_t capacity;
} ir_code_t;

int read_ir(ir_code_t *ir, char *fn);
void clear(ir_code_t *ir);

#endif
