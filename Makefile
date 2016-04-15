# vim: set ts=8 sw=8 noet:
#
#

all: 		manual.html

manual.html: 	manual.md page.theme
		theme -o $@ $<
