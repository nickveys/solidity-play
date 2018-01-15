pragma solidity ^0.4.0;

contract HelloWorldContract {

  address issuer;

  string word = "Hello, World!";

  function HelloWorldContract() {
    issuer = msg.sender;
  }

  function getWord() constant returns(string) {
    return word;
  }

  function setWord(string replacement) returns(string) {
    if (msg.sender != issuer) {
      return "You are not the creator!";
    } else {
      word = replacement;
      return "Word changed...";
    }
  }
}
