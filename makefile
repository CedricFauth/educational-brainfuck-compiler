CC=gcc
CCFLAGS=-Wall -pedantic -std=c99
LDFLAGS=
SOURCES=$(wildcard *.c)
OBJECTS=$(SOURCES:.c=.o)
TARGET=bfc

all: $(TARGET) clean

$(TARGET): $(DIR)$(OBJECTS)
		$(CC) -o $@ $^ $(LDFLAGS) 

%.o: %.c %.h
		$(CC) $(CCFLAGS) -c $<

%.o: %.c
		$(CC) $(CCFLAGS) -c $<

.PHONY: clean
clean:
		rm -f *.o
