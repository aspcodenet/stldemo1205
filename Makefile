PROG=stefansprogram.exe
CC=g++
CFLAGS=-g -Wall -Werror -std=c++20
OBJ=main.o
DEPS=bankaccount.h main.h

$(PROG): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

clean:
	del $(OBJ) $(PROG)