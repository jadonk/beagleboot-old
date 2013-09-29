CC=gcc
CFLAGS=-c -Wall $(shell pkg-config --cflags libusb-1.0)
LDFLAGS=$(shell pkg-config --libs libusb-1.0)
OBJ_FOLDER=obj
all: boot

boot: main.o bootp.o udp.o ipv4.o ether2.o rndis.o utils.o arp.o tftp.o
	mkdir -p bin
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o bin/boot

.c.o:
	$(CC) $(CFLAGS) $<

clean:
	rm -rf *o bin/boot

