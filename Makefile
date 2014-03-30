LUA = $(shell which luajit || which lua)
PROJECT = lsynapse

VERSION = $(shell cat $(PROJECT).rockspec | grep version | awk '{print $$3}' | xargs echo)

all: rockspec $(PROJECT)

rockspec: .rockspec/$(PROJECT)-$(VERSION).rockspec
.rockspec/$(PROJECT)-$(VERSION).rockspec:
	@cp $(PROJECT).rockspec .rockspec/$(PROJECT)-$(VERSION).rockspec

$(PROJECT):
	@luarocks make .rockspec/$(PROJECT)-$(VERSION).rockspec

clean:
	@rm $(PROJECT)-*.rockspec

export LUA_PATH=;;src/?.lua;unittest/?.lua

test:
	@busted
