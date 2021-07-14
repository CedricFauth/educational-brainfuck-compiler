#include <stdio.h>
#include <string.h>
#include <math.h>
#include "code.h"
#include "bfc.h"

char *asm_header = "global _main\n\
%define SIZE 30000\n\
%macro READCHAR 0\n\
\t%%retry:\n\
\tmov rax, 0x2000003\n\
\tmov rdi, 0\n\
\tmov rsi, rbx\n\
\tmov rdx, 1\n\
\tsyscall\n\
\tcmp BYTE [rbx], 0xA\n\
\tje %%retry\n\
%endmacro\n\
%macro PUTCHAR 0\n\
\tmov rax, 0x2000004\n\
\tmov rdi, 1\n\
\tmov rsi, rbx\n\
\tmov rdx, 1\n\
\tsyscall\n\
%endmacro\n\
%macro EXIT 0\n\
\tmov rax, 0x2000001\n\
\tmov rdi, 0\n\
\tsyscall\n\
%endmacro\n\
section .bss\n\
\tarray: resd SIZE\n\
section .data\n\
section .text\n\
\t_main:\n\
\tmov rbx, array\n";

char *asm_footer = "\tEXIT\n";

char *asm_while = "L%03lu:\
\tcmp DWORD [rbx], 0\n\
\tje E%03lu\n";

char *asm_endwhile = "\tjmp L%03lu\n\
E%03lu:\n";

char *asm_put = "\tPUTCHAR\n";
char *asm_get = "\tREADCHAR\n";
char *asm_dec = "\tdec DWORD [rbx]\n";
char *asm_inc = "\tinc DWORD [rbx]\n";
char *asm_prev = "\tsub rbx, 4\n";
char *asm_next = "\tadd rbx, 4\n";
char *asm_shortprev = "\tsub rbx, 4*%lu\n";
char *asm_shortnext = "\tadd rbx, 4*%lu\n";
char *asm_shortdec = "\tsub DWORD [rbx], %lu\n";
char *asm_shortinc = "\tadd DWORD [rbx], %lu\n";

size_t *loop_ptr, loop_count = 1, loop_stack[2048];

size_t loop_push() {
	*loop_ptr = loop_count;
	++loop_ptr;
	return loop_count++;
}

size_t loop_pop() {
	if (loop_ptr <= loop_stack) {
		DEBUGS("error: loop pointer below stack");
		return 0;
	}
	--loop_ptr;
	return *loop_ptr;
}

int generate(ir_code_t *ir, char *fn) {
	FILE *fp = fopen(fn, "w");
	if (!fp) return -1;

	loop_ptr = loop_stack;
	size_t val;
	char buff[100];

	fwrite(asm_header, 1, strlen(asm_header), fp);
	for (size_t i = 0; i < ir->length; ++i) {
		size_t token = ir->data[i];
		switch (token) {
		case TOK_NOOP:
			break;
		case TOK_PUT:
			fwrite(asm_put, 1, strlen(asm_put), fp);
			break;
		case TOK_GET:
			fwrite(asm_get, 1, strlen(asm_get), fp);
			break;
		case TOK_INC:
			fwrite(asm_inc, 1, strlen(asm_inc), fp);
			break;
		case TOK_DEC:
			fwrite(asm_dec, 1, strlen(asm_dec), fp);
			break;
		case TOK_NEXT:
			fwrite(asm_next, 1, strlen(asm_next), fp);
			break;
		case TOK_PREV:
			fwrite(asm_prev, 1, strlen(asm_prev), fp);
			break;
		case TOK_WHILE:
			val = loop_push();
			snprintf(buff, strlen(asm_while)+1-4, asm_while, val, val);
			fwrite(buff, 1, strlen(buff), fp);
			break;
		case TOK_END:
			val = loop_pop();
			snprintf(buff, strlen(asm_endwhile)+1-4, asm_endwhile, val, val);
			fwrite(buff, 1, strlen(buff), fp);
			break;
		case TOK_SHORTPREV:
			snprintf(buff, strlen(asm_shortprev)+25, asm_shortprev, ir->data[i+1]);
			fwrite(buff, 1, strlen(buff), fp);
			++i;
			break;
		case TOK_SHORTNEXT:
			snprintf(buff, strlen(asm_shortnext)+25, asm_shortnext, ir->data[i+1]);
			fwrite(buff, 1, strlen(buff), fp);
			++i;
			break;
		case TOK_SHORTDEC:
			snprintf(buff, strlen(asm_shortdec)+25, asm_shortdec, ir->data[i+1]);
			fwrite(buff, 1, strlen(buff), fp);
			++i;
			break;
		case TOK_SHORTINC:
			snprintf(buff, strlen(asm_shortinc)+25, asm_shortinc, ir->data[i+1]);
			fwrite(buff, 1, strlen(buff), fp);
			++i;
			break;
		default:
			DEBUG("error: unknown symbol in generator: %c\n", (char)token);
			break;
		}
	}
	DEBUG("loop counter: %lu\n", loop_count);
	fwrite(asm_footer, 1, strlen(asm_footer), fp);
	fclose(fp);
	return 0;
}
