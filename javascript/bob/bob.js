var Bob = function() {};

Bob.prototype.hey = function(input) {
  if (isUpperCase(input)) {
    return 'Whoa, chill out!';
  }
  if (isQuestion(input)) {
    return 'Sure.';
  }
  if (silentTreatment(input)) {
    return 'Fine. Be that way!';
  }
    return 'Whatever.';
};

function isUpperCase(input) {
  return input === input.toUpperCase() &&
  input.toUpperCase() !== input.toLowerCase();
}

function isQuestion(input) {
  return input.endsWith('?');
}

function silentTreatment(input) {
  return input.trim() === '';
}

module.exports = Bob;
