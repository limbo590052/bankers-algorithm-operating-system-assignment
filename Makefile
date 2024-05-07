CC = gcc
CFLAGS = -std=c99 -pthread

# Define object files
OBJECTS = bankers_algorithm.o

.PHONY: all clean

all: $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o bankers_algorithm

clean:
	rm -f $(OBJECTS) bankers_algorithm

bankers_algorithm.o: bankers_algorithm.c
	$(CC) $(CFLAGS) -c bankers_algorithm.c
