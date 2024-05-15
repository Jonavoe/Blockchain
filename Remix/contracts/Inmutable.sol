// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.20;

contract Inmutable {
    address public immutable MY_ADDRESS;
    uint256 public immutable MY_NUMBER;


    constructor(address _address, uint256 _number){
        MY_ADDRESS = _address;
        MY_NUMBER = _number;
    }
}