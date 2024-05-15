// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Fallback {
    // cuando una funcion no existe, se llama fallback()

    event Log(string funcName, address sender, uint amount, bytes data);



    fallback() external payable {
        emit Log("fallback", msg.sender, msg.value, msg.data);
     }

    receive() external payable {
        emit Log("recive", msg.sender, msg.value, "");
     }
}