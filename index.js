const Picker = require('popup-picker');
const Clock = require('component-clock');

class Timepicker extends Picker {
  static of(...args) {
    return new Timepicker(...args);
  }

  constructor(el, options) {
    const clock = new Clock(options);
    super(el, clock);
    this.clock = clock;
  }
}

module.exports = Timepicker;
