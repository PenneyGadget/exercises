var Pangram = function(string) {
  this.string = string;
};

Pangram.prototype.isPangram = function(string) {
  return(this.string.match(/([a-zA-Z])(?!.*\1)/gi) || []).length === 26;
};

module.exports = Pangram;
