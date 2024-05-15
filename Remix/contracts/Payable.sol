// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Payable {
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    function deposit() external payable{
        (owner).transfer(address(this).balance);
    }

    function get() external view returns(uint){
        return address(this).balance;
    }
}