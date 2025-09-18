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
