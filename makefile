# make makefile
# 
# Tools used:
#  Compile::Resource Compiler
#  Compile::GNU C
#  Make: make
all : pie.exe

pie.exe : pie.obj pie.def
	gcc -Zomf pie.obj pie.def -o pie.exe

pie.obj : pie.c 
	gcc -Wall -Zomf -c -O2 pie.c -o pie.obj


clean :
	rm -rf *exe *res *obj *lib