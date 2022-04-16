// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// creating a contract that would last for a particular number of
// time and a modifier to check what do when time is ds==
contract Timer {
    uint _start;
    uint _end;

    modifier timerOver() {
        require( block.timestamp <= _end, "The timer is over");
        _;
    }

    function start() public {
        _start = block.timestamp;
    }

    function end(uint totalTime) public {
        _end = totalTime + _start;
    }

    // the modifier timerOver basically which checks if the time Left
    // is less than the inputed time for the function to end

    function getTimeLeft() public timerOver view returns (uint) {
        return _end - block.timestamp;
    }

}