var Gigasecond = function(startingDate) {
  this.startingDate = new Date(startingDate);
};

Gigasecond.prototype.date = function() {
  var newTime = this.startingDate.getTime() + Math.pow(10, 12);
  return new Date(newTime);
};

module.exports = Gigasecond;
