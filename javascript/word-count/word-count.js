var Words = function () {};

Words.prototype.count = function(string) {
  var words = string.trim().replace(/\s+/g, " ").split(" ");
  var wordCount = Object.create(null);

  for(var i=0; i < words.length; i++) {
    if(wordCount[words[i]] === undefined) {
      wordCount[words[i]] = 1;
    } else {
      wordCount[words[i]]++;
    }
  }
  return wordCount;
};

module.exports = Words;
