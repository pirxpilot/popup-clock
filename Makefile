PROJECT=timepicker
SRC=index.js
CSS= \
	node_modules/code42day-picker/node_modules/code42day-popover/node_modules/code42day-tip/tip.css \
	node_modules/code42day-clock/lib/clock.css \
	node_modules/code42day-picker/picker.css

all: check compile

check: lint

compile: build/build.js build/build.css

build:
	mkdir -p $@

$(CSS): | node_modules

build/build.css: $(CSS) | build
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
