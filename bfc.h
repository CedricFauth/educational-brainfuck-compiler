#if 1
	#define DEBUGS(s) puts(s) 
	#define DEBUG(f_, ...) printf((f_), __VA_ARGS__)
#else
	#define DEBUGS(s)
	#define DEBUG(f_)
#endif
