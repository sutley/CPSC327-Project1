CFLAGS = -Wall
#target exe "myexe"
all: main.o myfunc.o
	g++ $(CFLAGS) -o myexe main.o myfunc.o
	
#rebuild if either of the files below change
hello.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c main.cpp 
	
#rebuild if either of the files below change	
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp 

#cleans the executable "myexe" and .o files "main & myfunc"
clean:
	rm -f *.o myexe myfunc main