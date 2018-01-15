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

  function setWord(string replacement) ifIssuer returns(string) {
    word = replacement;
    return "Word changed...";
  }

  modifier ifIssuer() {
    if (msg.sender != issuer) {
      throw;
    } else {
      _;
    }
  }
}
