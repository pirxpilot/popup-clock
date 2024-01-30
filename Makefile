PROJECT=timepicker
NODE_BIN=./node_modules/.bin
SRC=index.js
CSS= \
	node_modules/@pirxpilot/tip/tip.css \
	node_modules/component-clock/lib/clock.css \
	node_modules/popup-picker/picker.css

all: check compile

check: lint

compile: build/build.js build/build.css

build:
	mkdir -p $@

build/build.css: $(CSS) | node_modules build
	cat $^ > $@

build/build.js: $(SRC) | node_modules build
	$(NODE_BIN)/esbuild \
		--bundle \
		--define:DEBUG="true" \
		--global-name=PopupClock \
		--outfile=$@ \
		index.js

$(CSS): | node_modules

node_modules: package.json
	yarn && touch $@

lint: | node_modules
	$(NODE_BIN)/jshint $(SRC)

clean:
	rm -fr build node_modules

.PHONY: clean lint check all compile
