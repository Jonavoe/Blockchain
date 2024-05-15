// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract Functions{
    
    function returnMany() public pure returns(uint256, bool, int) {
        return (1, true, 10);
    }

    function returnWithName() public pure returns(uint256 x, bool y, int z){
        return (1, true, 10);
    }

    function returnWhitValue() public pure returns(uint256 x, bool y, int z){
        x = 10;
        y = false;
        z = 100;
    }

    function destructuring() public pure returns(uint256 x, bool y, string memory z, int a){
        (uint256 _a, bool _b, int _c) = returnMany();
        (uint256 _d, , int _f) = returnWhitValue();
        return (x,y,z,a);
    }

}