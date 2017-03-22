PREFIX ?= /usr/local
VERSION = "0.47.1"

all: install

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 rubocop $(DESTDIR)$(PREFIX)/bin/rubocop

uninstall:
	@$(RM) $(DESTDIR)$(PREFIX)/bin/rubocop
	@docker rmi nicklinnell/rubocop:$(VERSION)
	@docker rmi nicklinnell/rubocop:latest

build:
	@docker build -t nicklinnell/rubocop:$(VERSION) . \
	&& docker tag -f nicklinnell/rubocop:$(VERSION) nicklinnell/rubocop:latest

publish: build
	@docker push nicklinnell/rubocop:$(VERSION) \
	&& docker push nicklinnell/rubocop:latest

.PHONY: all install uninstall build publish
