default: interface compile

interface:
	@swig -python incref.i

compile:
	@gcc -g -fPIC -c incref.c
	@gcc -g -fPIC -c incref_wrap.c -I/usr/include/python2.7
	@gcc -g -shared incref.o incref_wrap.o -lpython -o _incref.so

run:
	@./run.py

.PHONY: clean
clean:
	@rm -rf *.o *.so incref_wrap.c incref.py incref.pyc __pycache__
