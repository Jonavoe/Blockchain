// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

abstract contract AbstractContract {

    address public myAddress;

    constructor(){

    }

    function foo() virtual external returns(uint256){
        
    }
}

contract MyContract is AbstractContract {
    uint256 public myNumber;

    function foo() override external returns (uint256){
        myNumber = 2;
        return myNumber;
    } 
}