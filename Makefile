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

build/build.css: $(CSS) | build
	cat $^ > $@

build/build.js: $(SRC) | build
	$(NODE_BIN)/esbuild \
		--bundle \
		--define:DEBUG="true" \
		--global-name=PopupClock \
		--outfile=$@ \
		index.js

$(CSS):

lint:
	$(NODE_BIN)/biome ci

format:
	$(NODE_BIN)/biome check --fix

clean:
	rm -fr build node_modules

.PHONY: clean format lint check all compile
