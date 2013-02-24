var Popover = require('popover'),
  Clock = require('clock'),
  Emitter = require('emitter'),
  event = require('event');

module.exports = Timepicker;

/*global document*/

function clickOutside(el, fn) {
  var self = {
    on: on,
    off: off
  };

  function stop(e) {
    e.stopPropagation();
  }

  function on() {
    var html = document.querySelector('html');
    event.bind(el, 'mousedown', stop);
    event.bind(html, 'mousedown', fn);
    return self;
  }

  function off() {
    var html = document.querySelector('html');
    event.unbind(html, 'mousedown', fn);
    event.unbind(el, 'mousedown', stop);
    return self;
  }

  return self;
}

function Timepicker(el) {
  if (!(this instanceof Timepicker)) return new Timepicker(el);
  Emitter.call(this);
  this.el = el;
  this.clock = new Clock()
    .on('change', this.onchange.bind(this));
  event.bind(el, 'click', this.onclick.bind(this));
}

Emitter(Timepicker.prototype);

Timepicker.prototype.onclick = function() {
  var self = this;
  if (this.el.disabled) {
    return;
  }
  if (!self.popover) {
    this.popover = new Popover(this.clock.el)
      .on('show', function() {
        self.clickOutside.on();
        self.emit('show');
      })
      .on('hide', function() {
        self.clickOutside.off();
        self.emit('hide');
      });
    this.clickOutside = clickOutside(this.popover.el[0], function() {
      self.popover.hide();
    });
    this.popover.classname = 'timepicker popover';
    if (this._position) {
      this.popover.position(this._position);
    }
  }
  this.popover.show(this.el);
};

Timepicker.prototype.onchange = function(v, complete) {
  this.emit('change', v);
  if (complete) {
    this.popover.hide();
  }
};

Timepicker.prototype.position = function(v) {
  this._position = v;
  return this;
};
