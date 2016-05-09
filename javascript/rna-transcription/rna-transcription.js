var DnaTranscriber = function () {};

DnaTranscriber.prototype.toRna = function(strand) {
  var rnaStrand = '';
  for (var i = 0; i < strand.length; i++) {
    if (strand.charAt(i) === 'C') {
      rnaStrand = rnaStrand.concat('G');
    } if (strand.charAt(i) === 'G') {
      rnaStrand = rnaStrand.concat('C');
    } if (strand.charAt(i) === 'A') {
      rnaStrand = rnaStrand.concat('U');
    } if (strand.charAt(i) === 'T') {
    rnaStrand = rnaStrand.concat('A');
    }
  }
  return rnaStrand;
};

module.exports = DnaTranscriber;
