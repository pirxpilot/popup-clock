[![NPM version][npm-image]][npm-url]
[![Build Status][travis-image]][travis-url]
[![Dependency Status][gemnasium-image]][gemnasium-url]

# popup-clock

  Time picker ui component for [popup-clock]

  ![Timepicker](https://gist.github.com/pirxpilot/5011178/raw/9a02c67f55d648cfd65f73d8ff9be81675b79d07/timepicker-preview.png)

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

[npm-image]: https://img.shields.io/npm/v/popup-clock.svg
[npm-url]: https://npmjs.org/package/popup-clock

[travis-url]: https://travis-ci.org/pirxpilot/timepicker
[travis-image]: https://img.shields.io/travis/pirxpilot/timepicker.svg

[gemnasium-image]: https://img.shields.io/gemnasium/pirxpilot/timepicker.svg
[gemnasium-url]: https://gemnasium.com/pirxpilot/timepicker
