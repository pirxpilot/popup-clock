import Clock from 'component-clock';
import Picker from 'popup-picker';

export default class Timepicker extends Picker {
  static of(...args) {
    return new Timepicker(...args);
  }

  constructor(el, options) {
    const clock = new Clock(options);
    super(el, clock);
    this.clock = clock;
  }
}
