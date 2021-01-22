pragma solidity ^0.5.16;

contract SimpleBank {
    address public owner;
    mapping (address => uint256) private balanceOf;
    
    constructor() public {
        owner = msg.sender;
    }

    function deposit(uint256 amount) public payable returns (uint256) {
        require(amount == msg.value, "Vous n'avez pas déposé assez");
        return address(this).balance;
    }

    function withdraw(uint256 withdrawAmount) public {
        if (withdrawAmount <= address(this).balance) {
            msg.sender.transfer(withdrawAmount);
        }
    }

    function getBalance() public view returns (uint256) {
        return balanceOf[msg.sender];
    }

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}