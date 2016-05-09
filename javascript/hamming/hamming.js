var Hamming = function() {};

Hamming.prototype.compute = function(strand1, strand2) {
  if (strand1.length != strand2.length) {
    throw 'DNA strands must be of equal length.';
  } else {
    var counter = 0;
    for(var i = 0; i < strand1.length; i++) {
      if(strand1[i] != strand2[i]) {
        counter += 1;
      }
    }
    return counter;
  }
};

module.exports = Hamming;
