// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract Modifiers {
    bool public paused;
    uint public myNumber;
    address public owner;

    constructor(bool _paused){
        paused = _paused;
        owner = msg.sender;
    }

    function fOne() external contractIsPaused {
        require(!paused, "Contract paused");
        myNumber = 1;
    }

    function ftWo() external contractIsPaused onlyOwner(msg.sender) {
        require(!paused, "Contract paused");
        myNumber = 2;
    }

    function fThree() external updatingMyNumber {
        myNumber = 100;
    }

    modifier contractIsPaused(){
        require(!paused, "Contract paused");
        _;
    }

    modifier updatingMyNumber(){
        myNumber++;
        _;
        myNumber = myNumber +2;
    }

    modifier last(){
        _;
        myNumber = 300;
    }

    modifier onlyOwner(address _owner){
        require(_owner == owner, "Only owner");
        _;
    }
}