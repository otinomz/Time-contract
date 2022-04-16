// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// claiming ownnership of a contract
contract Ownable {

    address public owner;

    constructor () {
        owner = msg.sender;
    }

    modifier onlyOwner () {
        require(msg.sender == owner, "not owner");
        _;
    }

}