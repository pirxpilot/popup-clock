[![NPM version][npm-image]][npm-url]
[![Build Status][travis-image]][travis-url]
[![Dependency Status][gemnasium-image]][gemnasium-url]

# timepicker

  Time picker ui component for [code42day-clock]

  ![Timepicker](https://gist.github.com/pirxpilot/5011178/raw/9a02c67f55d648cfd65f73d8ff9be81675b79d07/timepicker-preview.png)

  Click [here](http://code42day.github.io/timepicker/) to see online demo.


## Installation

    $ component install code42day/timepicker

## Example

```js
var Timepicker = require('timepicker');
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

[clock][code42day-clock] reference

## License

  MIT

[code42day-clock]: https://npmjs.org/package/code42day-clock

[npm-image]: https://img.shields.io/npm/v/code42day-timepicker.svg
[npm-url]: https://npmjs.org/package/code42day-timepicker

[travis-url]: https://travis-ci.org/code42day/timepicker
[travis-image]: https://img.shields.io/travis/code42day/timepicker.svg

[gemnasium-image]: https://img.shields.io/gemnasium/code42day/timepicker.svg
[gemnasium-url]: https://gemnasium.com/code42day/timepicker
