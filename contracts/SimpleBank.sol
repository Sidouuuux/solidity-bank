pragma solidity ^0.5.16;

contract SimpleBank {
    address public owner;
    mapping (address => uint256) private balanceOf;
    
    constructor() public {
        owner = msg.sender;
    }

    function deposit() public payable returns (uint256) {
        balanceOf[msg.sender] += msg.value;
        return balanceOf[msg.sender];
    }

    function withdraw(uint256 withdrawAmount) public {
        if (withdrawAmount <= balanceOf[msg.sender]) {
            balanceOf[msg.sender] -= withdrawAmount;
            msg.sender.transfer(withdrawAmount);
        }
    }

    function getBalance() public view returns (uint256) {
        return balanceOf[msg.sender];
    }

    /// @return The balance of the Simple Bank contract
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}