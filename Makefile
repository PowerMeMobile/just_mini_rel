.PHONY: all deps compile clean console rel relclean clobber

all: deps rel

deps:
	@./rebar get-deps

compile:
	@./rebar compile

clean:
	@./rebar clean

console:
	@just_mini/bin/just console

rel: relclean compile
	@./rebar generate

relclean:
	@rm -rf just_mini

clobber: relclean clean
