#ifndef STDLIB_H
#define STDLIB_H

#include <stddef.h>

#define EXIT_FAILURE (-1)

void free(void *ptr);
void *realloc(void *ptr, size_t size);
void exit(int status);
void abort(void);

#endif
