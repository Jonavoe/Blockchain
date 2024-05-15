// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract Array{
    uint[] public arr;

    uint[] public arrTwo = [1,2,3];

    uint[8] public arrayFixedLength;

    function getArray() public view returns(uint[] memory){
        return arr;
    }

    function push(uint _i) public {
        arr.push(_i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns(uint){
        return arr.length;
    }

    function removeFromArray(uint _i) public {
        delete arr[_i];
    }

    function createArray() public pure returns(uint[] memory){
        uint[] memory a = new uint[](3);
    }
}