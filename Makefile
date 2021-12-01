.ONESHELL:

check-date:
	@cd _posts \
	&& ls -1 \
	| grep -iP '^\d+-\d+-\d+' \
	| xargs --replace bash -c 'if [ "$$(echo "{}" | grep -iPo "^\\d+-\\d+-\\d+")" != "$$(grep -iP -o "(?<=date: )\\d+-\\d+-\\d+" "{}")" ]; then echo {}; fi' \
	exit 0
.PHONY: check-date

GREP := grep
SED := sed