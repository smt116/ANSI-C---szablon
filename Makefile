FLAGS = -Wall -g

MAIN = main
OUTPUT = main
LIB = lib

default: compile clean

compile: obj
	$(CC) $(FLAGS)  $(MAIN).o $(LIB).o -o $(OUTPUT)

obj:
	$(CC) $(FLAGS) *.c -c

$(MAIN).o: $(MAIN).c $(LIB).h

$(LIB).o: $(LIB).c $(LIB).h

clean:
	rm -f *~ *.o .*.swp

veryclean: clean
	rm -f *.in *.out $(OUTPUT)
