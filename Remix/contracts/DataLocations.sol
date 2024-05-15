// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract DataLocations {
    // *** storage, memory, calldata **

    mapping(uint256 => MyStruct) public myStructs;

    struct MyStruct {
        string foo;
    }

    function fMemory(string memory _foo, uint256[] calldata _arr) external {
        MyStruct memory myStruct = myStructs[0];
        myStruct.foo = _foo;
        myStructs[0] = myStruct;
        _internalFunction(_arr);
    }

    function fStorage(string memory _foo) external {
        MyStruct storage myStruct = myStructs[0];
        myStruct.foo = _foo;
    }

    function _internalFunction(uint256[] memory _arr) internal {

    }
}
