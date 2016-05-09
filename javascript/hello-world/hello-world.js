var HelloWorld = function() {};

HelloWorld.prototype.hello = function(input) {
  if(input) {
    return "Hello, " + input + "!";
  }else{
    return "Hello, World!";
  }
};

module.exports = HelloWorld;
