all:

install:
	install -D -m755 wrappers/run-pgbouncer $(DESTDIR)/usr/bin/run-pgbouncer

