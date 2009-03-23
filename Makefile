CC      = /usr/bin/gcc
CFLAGS  = -Wall -g 
LDFLAGS = -lm 
PREFIX  = usr/bin/
DESTDIR = 

OBJ = datalogger.o lowlevel.o datalog-decode.o main.o

PROG = skytraq-datalogger

$(PROG): $(OBJ)
	$(CC) $(CFLAGS) -o $(PROG) $(OBJ) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o $(PROG)

install:
	cp  $(PROG)  $(DESTDIR)/$(PREFIX)
