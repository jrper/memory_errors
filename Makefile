### Makefile --- 

## Author: origimbo@james-percivals-computer.local
## Version: $Id: Makefile,v 0.0 2018/05/23 17:42:07 origimbo Exp $
## Keywords: 
## X-URL: 

FOBJS = bounds_check.F90 fmemory_leak.F90
FTARGETS = $(addprefix bin/,$(basename ${FOBJS}))
COBJS = bounds_failure.c cmemory_leak.c
CTARGETS = $(addprefix bin/,$(basename ${COBJS}))

FC = gfortran
CC = gcc

.SUFFIXES: .f90 .F90 .c .cpp .o .a

all: ${FTARGETS} ${CTARGETS}

$(filter bin/%,${FTARGETS}): bin/%: src/%.F90
	mkdir -p bin
	${FC} $< -O0 ${FCFLAGS} -g -o $@

$(filter bin/%,${CTARGETS}): bin/%: src/%.c
	mkdir -p bin
	${CC} $< -O0  -fno-stack-check ${CFLAGS} -g -o $@




### Makefile ends here
