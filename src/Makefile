CC     := gcc
CFLAGS := -Wall
PROG   := AcDc

ifeq "${OS}" "Windows_NT"
PROG := ${PROG}.exe
endif

.PHONY: all clean

all: ${PROG}

${PROG}: AcDc.c header.h
	${CC} ${CFLAGS} -o $@ $<

clean:
	rm ${PROG}
