// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract SendEther {
    //transfer - 2300gas arroja un error
    //send - 2300 bool
    //call - return bool / bytes

    constructor() payable  {}

        function transferETH(address payable _to) external payable {
            _to.transfer(msg.value);
        }

        function sendETH(address payable _to) external payable {
            bool sent =  _to.send(msg.value);
            require(sent, "Error sending ETH");
        }

        function callETH(address payable _to) external payable {
            (bool sent,) = _to.call{value: msg.value}("");
            require(sent, "Error sending ETH");
        }
}

contract reciveEther {

    event Log(uint256 amount, uint256 gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }
}