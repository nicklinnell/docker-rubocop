PREFIX ?= /usr/local
VERSION = "0.47.1"

all: install

install:
	docker pull nicklinnell/rubocop:$(VERSION)
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 rubocop $(DESTDIR)$(PREFIX)/bin/rubocop

uninstall:
	@$(RM) $(DESTDIR)$(PREFIX)/bin/rubocop
	@docker rmi nicklinnell/rubocop:$(VERSION)
	@docker rmi nicklinnell/rubocop:latest

build:
	@docker build -t nicklinnell/rubocop:$(VERSION) . \
	&& docker tag nicklinnell/rubocop:$(VERSION) nicklinnell/rubocop:latest

.PHONY: all install uninstall build
