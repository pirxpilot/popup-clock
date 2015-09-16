var Picker = require('picker');
var Clock = require('clock');
var inherit = require('inherit');

module.exports = Timepicker;

function Timepicker(el) {
  if (!(this instanceof Timepicker)) return new Timepicker(el);
  this.clock = new Clock();
  Picker.call(this, el, this.clock);
}

inherit(Timepicker, Picker);