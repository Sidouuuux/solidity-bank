pragma solidity ^0.5.16;

contract SimpleBank {
    uint256 balance;
    
    constructor() public {
        balance = 1;
    }
    
    function getBalance() public view returns(uint256) {
        return balance;
    }
    
    function withdraw(uint256 amount) public{
        balance = balance - amount;
    }
    
    function deposit(uint256 amount) public {
        balance = balance + amount;
    }
}