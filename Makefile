
build: components index.js timepicker.css template.js
	@component build --dev

template.js: template.html
	@component convert $<

components: component.json
	@component install --dev

lint:
	@jshint index.js

clean:
	rm -fr build components template.js

.PHONY: clean lint
