CC=gcc
CFLAGS=-O2 -ggdb
ALSAFLAGS=`pkg-config --libs --cflags alsa`
MPG123FLAGS=`pkg-config --libs --cflags libmpg123`

.SUFFIXES: .c
.c.o:
	$(CC) $(CFLAGS) -c $<


SRC = mp3play.c
OBJ = mp3play.o
BIN = mp3play

all:	mp3play

mp3play:
	$(CC) $(CFLAGS) -o $(BIN) $(SRC) $(ALSAFLAGS) $(MPG123FLAGS)

clean:
	rm -f $(OBJ) $(BIN)
