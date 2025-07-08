// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleWallet{
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    function deposit() public payable {
        require(msg.value > 0, "Send some ETH");
    }

    function withdraw(uint amount) public onlyOwner {
        require(address(this).balance >= amount, "Insufficient balance");
        payable(msg.sender).transfer(amount);
    }
}