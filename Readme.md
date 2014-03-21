
# timepicker

  Timepicker component

  ![Timepicker](https://gist.github.com/pirxpilot/5011178/raw/9a02c67f55d648cfd65f73d8ff9be81675b79d07/timepicker-preview.png)

  Click [here](http://code42day.github.io/timepicker/) to see online demo.


## Installation

    $ component install code42day/timepicker

## Example

```js
var Timepicker = require('timepicker');
var el = document.querySelector('[name=time]');
new Timepicker(el)
  .on('change', function(v) {
    el.value = (v.hour || '0') + ':' + (v.minute || '00');
  });
```

## Events

  - `change` (time) - when the selected time is modified - see [clock]
  	`time` is an object with `hour` and `minute` properties,

  - `show` [popover] show event
  - `hide` [popover] hide event

## API

### new Timepicker(el)

Create a new Timepicker attached to `el` input DOM node

### .clock.select(time)

Select time on the [clock]

## License

  MIT


[popover]: https://github.com/component/popover
[clock]: https://github.com/code42day/clock