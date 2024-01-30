[![NPM version][npm-image]][npm-url]
[![Build Status][build-image]][build-url]
[![Dependency Status][deps-image]][deps-url]

# popup-clock

  Time picker ui component for [popup-clock]

  Click [here](http://pirxpilot.github.io/popup-clock/) to see online demo.

## Installation

    $ npm install popup-clock

## Example

```js
var Timepicker = require('popup-clock');
var el = document.querySelector('[name=time]');
new Timepicker(el, options)
  .clock
  .on('change', function(v) {
    el.value = (v.hour || '0') + ':' + (v.minute || '00');
  });
```

## API

### new Timepicker(el)

Create a new Timepicker attached to `el` input DOM node

### Timepicker.clock

[clock][popup-clock] reference

## License

  MIT

[popup-clock]: https://npmjs.org/package/popup-clock

[npm-image]: https://img.shields.io/npm/v/popup-clock
[npm-url]: https://npmjs.org/package/popup-clock

[build-url]: https://github.com/pirxpilot/popup-clock/actions/workflows/check.yaml
[build-image]: https://img.shields.io/github/actions/workflow/status/pirxpilot/popup-clock/check.yaml?branch=main

[deps-image]: https://img.shields.io/librariesio/release/npm/popup-clock
[deps-url]: https://libraries.io/npm/popup-clock
