pragma solidity ^0.4.0;

contract PayableContract {

  function PayableContract() {
    /* do nothing */
  }

  function sendFunds() public payable {
    /* do nothing */
  }

  function getBalance() constant returns(uint) {
    return this.balance;
  }
}
