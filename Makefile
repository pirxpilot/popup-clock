SRC=index.js lib/timepicker.js

all: lint build

build: components lib/timepicker.css $(SRC)
	@component build --dev

%.js: %.html
	@component convert $<

components: component.json
	@component install --dev

lint:
	@jshint $(SRC)

clean:
	rm -fr build components template.js

.PHONY: clean lint
