srcDir := src

CTAGS := ctags
PROG  := ${srcDir}/AcDc

ifeq "${OS}" "Windows_NT"
PROG := ${PROG}.exe
endif

.PHONY: all ${PROG} tags clean

all: ${PROG}

${PROG}:
	${MAKE} -C ${srcDir}

tags:
	${CTAGS} -R ${srcDir}

clean:
	${MAKE} -C ${srcDir} clean
