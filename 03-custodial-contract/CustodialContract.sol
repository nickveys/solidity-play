pragma solidity ^0.4.0;

contract CustodialContract {

  address client;

  function CustodialContract() {
    client = msg.sender;
  }

  function depositFunds() public payable {
    /* do nothing */
  }

  function getBalance() ifClient constant returns(uint){
    return this.balance;
  }

  function withdrawFunds(uint amount) ifClient public {
    if (client.send(amount)) {
      /* send succeeded */
    } else {
      /* send failed */
    }
  }

  modifier ifClient() {
    if (msg.sender != client) {
      throw;
    }
    _;
  }
}
