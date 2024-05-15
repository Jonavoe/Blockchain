// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract Errors {
    //require - revert - assert

    function testRquire(uint _x) public pure {
        require(_x > 10, "Must be greater than 10");
    }

    function testRevert(uint _x) public pure {
        if(_x <= 10){
            revert("Must be greaer than 10");
        }
    }

    uint public myNumber = 100;

    function testAssert() public view {
        assert(myNumber == 100);
    }

    error Insufficientbalance(uint amount, address user);
    error CustomError( string);

    uint public userBalance = 100;

    function withdraw(uint _amountToWhitDraw) public view {
        if (_amountToWhitDraw <= userBalance){
            revert Insufficientbalance(_amountToWhitDraw, msg.sender);
        } else {
            revert CustomError("Insufficient balance");
        }
    }
}