PROJECT=timepicker
SRC=index.js lib/timepicker.js

all: check compile

check: lint

compile: build/build.js build/build.css

build:
	mkdir -p $@

build/build.css: \
		node_modules/popover-component/node_modules/component-tip/tip.css \
		node_modules/code42day-clock/lib/clock.css \
		lib/timepicker.css | build
	cat $^ > $@

build/build.js: node_modules $(SRC) | build
	browserify --require ./index.js:$(PROJECT) --outfile $@

.DELETE_ON_ERROR: build/build.js

node_modules: package.json
	npm install

lint:
	jshint $(SRC)

clean:
	rm -fr build node_modules

.PHONY: clean lint check all compile
