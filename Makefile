CC = gcc
CFLAGS = -Wall -Wextra -Iinclude

LIB_NAME = libeven
SRC = src/even.c
OBJ = $(SRC:.c=.o)

PREFIX=/usr/local
INCLUDEDIR=$(PREFIX)/include
LIBDIR=$(PREFIX)/lib

all: static shared example

static: $(OBJ)
	ar rcs $(LIB_NAME).a $(OBJ)

shared: $(OBJ)
	$(CC) -shared -o $(LIB_NAME).so $(OBJ)

example: static
	$(CC) examples/main.c -L. -leven -Iinclude -o main

clean:
	rm -f src/*.o *.a *.so main
	
install: all
	mkdir -p $(INCLUDEDIR) $(LIBDIR)
	cp include/even.h $(INCLUDEDIR)
	cp $(LIB_NAME).a $(LIBDIR)
	cp $(LIB_NAME).so $(LIBDIR)
	@echo "Library installed to $(PREFIX)"

uninstall:
	rm -f $(INCLUDEDIR)/even.h
	rm -f $(LIBDIR)/$(LIB_NAME).a
	rm -f $(LIBDIR)/$(LIB_NAME).so
	@echo "Library uninstalled from $(PREFIX)"
