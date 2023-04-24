CC=gcc
CFLAGS=-I.
DEPS = manager.h product.h
OBJ = manager.o product.o market.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

market: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm -f *.o market

