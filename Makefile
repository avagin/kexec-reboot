PREFIX?=/usr/local
DESTDIR?=
INSTALL?=install

SCRIPTS = "kreboot"

.PHONY: all 
all:
	@echo "Nothing to build, it is all bash :)"
	@echo "Try make install"

.PHONY: install
install:
	$(INSTALL) -d $(DESTDIR)$(PREFIX)/bin/
	$(INSTALL) -m 755 $(SCRIPTS) $(DESTDIR)$(PREFIX)/bin

.PHONY: uninstall
uninstall:
	./uninstall $(DESTDIR)$(PREFIX)/bin/ $(SCRIPTS)
