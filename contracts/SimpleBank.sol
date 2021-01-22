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

contract MyToken {
    string private name;
    string private symbol;
    uint256 private totalSupply;
    string private owner;

    mapping(address => uint256) public balanceOf;

    constructor(string memory _name, string memory _symbol, uint256 _totalSupply) public {
        balanceOf[msg.sender] = _totalSupply;
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
    }
    
    function initBalance(uint256 _value) public returns (bool success){
        balanceOf[msg.sender] -= _value;
        return true;
    }
    
    function getBalance() public view returns (uint256 balance){
        return balanceOf[msg.sender];
    }

    function transfer(address _to, uint256 _value) public returns (bool success){
        require(balanceOf[msg.sender] >= _value, "Your balance is too low");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        return true;
    }
}
