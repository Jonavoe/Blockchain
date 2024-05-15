// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;


contract ParentContract {
    uint public myNumberParent;
    constructor(uint _myNumberParent){
        myNumberParent = _myNumberParent;
    }
}

contract Constructor is ParentContract(1) {
    uint public myNumber;
    constructor(uint _myNumber){
        myNumber = _myNumber;
    }
}
