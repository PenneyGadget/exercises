var Isogram = function(word) {
  this.word = word.toLowerCase();
};

Isogram.prototype.isIsogram = function() {
  if (this.word.match(/([a-z]).*\1/)) {
    return false;
  } else {
    return true;
  }
};

module.exports = Isogram;
