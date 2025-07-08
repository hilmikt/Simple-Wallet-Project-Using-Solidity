// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleWallet{
    address public owner;

    event Deposited(address indexed sender, uint amount);
    event Withdrawn(address indexed to, uint amount);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    function deposit() public payable {
        require(msg.value > 0, "Send some ETH");
        emit Deposited(msg.sender, msg.value);
    }

    function withdraw(uint amount) public onlyOwner {
        require(address(this).balance >= amount, "Insufficient balance");
        payable(msg.sender).transfer(amount);
        emit Withdrawn(msg.sender, amount);
    }

    function getBalance()public view returns(uint){
        return address(this).balance;
    }

    receive() external payable {
        emit Deposited(msg.sender, msg.value);
    }

    fallback() external payable {
        emit Deposited(msg.sender, msg.value);
    }
}