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

    function setOwner (address _newOwner) external onlyOwner {
        // with this only the owner would be able to set the new owner

        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }

    // to test the code
    // we declare a function where onlyOwner can call 
    // and another where anyOneCancall 

    function onlyOwnerCanCallThisFunc() external onlyOwner {
        // code goes in here
    }


    function anyOneCanCallThisFunc() external onlyOwner {
        // code goes in here
    }
}