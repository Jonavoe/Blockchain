// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract FunctionViewAndPure{
    uint256 public z = 1;

    function fView(uint256 y) public view returns (uint256){
        return z + y;
    }

    function fPure(uint256 _x, uint256 _y) public pure returns (uint256){
        return _x + _y;
    }
}