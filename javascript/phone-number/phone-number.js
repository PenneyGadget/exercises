var PhoneNumber = function(num) {
  this.cleanNum = clean(num);
  this.num = num;
};

PhoneNumber.prototype.number = function() {
  return this.cleanNum;
};

PhoneNumber.prototype.areaCode = function() {
  return this.num.slice(0, 3);
};

PhoneNumber.prototype.toString = function() {
  if(this.num.length === 10) {
    return "(" + this.num.slice(0, 3) + ") " +
    this.num.slice(3, 6) + "-" + this.num.slice(6);
  }
};

function clean(num) {
  num = num.replace(/\D/g,'');

  if(num[0] === '1' && num.length != 10) {
    num = num.substr(1);
  }

  if(num.length != 10 || num[0] != '1') {
    num = '0000000000';
  }

  return num;
}

module.exports = PhoneNumber;
