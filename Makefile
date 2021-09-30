CC         = g++ 
CFLAGS     = --std=c++11 -g -Wall
CFLAGSROOT = `root-config --cflags`
LIBSROOT   = `root-config --glibs`

all: Main

Vettore.o: Vettore.cpp
	$(CC) $(CFLAGS) -c Vettore.cpp      $(CFLAGSROOT)
Main: Main.cpp Vettore.o 
	$(CC) $(CFLAGS) -o Main Main.cpp Vettore.o $(CFLAGSROOT) $(LIBSROOT)
clean:
	rm *.o
