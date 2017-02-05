var Picker = require('picker');
var Clock = require('clock');
var inherit = require('inherit');

module.exports = Timepicker;

function Timepicker(el, options) {
  if (!(this instanceof Timepicker)) return new Timepicker(el, options);
  this.clock = new Clock(options);
  Picker.call(this, el, this.clock);
}

inherit(Timepicker, Picker);
