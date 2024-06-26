// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract ReadingWrting {
    address private myAddress;
    uint256 public myNumber;

    function setNumber(uint256 _myNumber) public {
        myNumber = _myNumber;
    }

    function getAddress() public view returns(address){
        return myAddress;
    }

    function getSender() public view returns (address) {
        return msg.sender;
    }

    function getTimeStamp() public view returns(uint){
        return block.timestamp;
    }
}