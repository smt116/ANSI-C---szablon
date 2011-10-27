FLAGS = -Wall

MAIN = main
OUTPUT = main
LIB = lib

default: obj
	$(CC) $(MAIN).o $(LIB).o -o $(OUTPUT)

obj:
	$(CC) $(STD) *.c -c

$(MAIN).o: $(MAIN).c $(LIB).h

$(LIB).o: $(LIB).c $(LIB).h

clean:
	rm -f *~ *.o .*.swp

veryclean: clean
	rm -f *.in *.out $(OUTPUT)
