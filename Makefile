# A simple makefile template for creating a standalone executable Common Lisp image.
#
# Dependencies:
#  * SBCL
#  * Quicklisp
#  * buildapp
#
# Author: Smith Dhumbumroong <zodmaner@gmail.com>

SYSNAME = system-name
TARGET = $(SYSNAME)
EFUNCTION = $(SYSNAME):main

all: $(TARGET)

$(TARGET): quicklisp-manifest.txt
	buildapp --manifest-file quicklisp-manifest.txt \
			 --compress-core \
			 --load-system $(SYSNAME) \
			 --entry $(EFUNCTION) \
			 --output $(TARGET)

quicklisp-manifest.txt:
	sbcl --no-userinit --no-sysinit --non-interactive \
		 --load ~/quicklisp/setup.lisp \
		 --eval '(ql:quickload "$(SYSNAME)")' \
		 --eval '(ql:write-asdf-manifest-file "quicklisp-manifest.txt")'

clean:
	-rm quicklisp-manifest.txt
