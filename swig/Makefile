CC=gcc
PYTHON=python2.6
CFLAGS=-Wall -g -O2
LDFLAGS=-lpulse
CPPFLAGS=-I/usr/include -I/usr/include/$(PYTHON)

all: pulse.py _pulse.so

pulse.py pulse_wrap.c: pulse.i
	swig $(CPPFLAGS) -Wall -python $(CPPFLAGS) $<

pulse_wrap.o: pulse_wrap.c
	$(CC) -c -fPIC $(CPPFLAGS) $(CFLAGS) -o $@ $<

_pulse.so: pulse_wrap.o
	$(CC) -shared -o $@ $< $(LDFLAGS)
