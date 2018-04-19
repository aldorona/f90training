#
# compiles and link files
#
f90 = ifort
Opt = -O -I$(INC) -I../srce -extend_source \
-ipo
#
main: main.f90
	$(f90) main.f90 $(Opt) -c -o main.o
add: add.f90
	$(f90) add.f90 $(Opt) -c -o add.o
default: add.o main.o
	$(f90) add.o main.o $(Opt) -o main.exe
