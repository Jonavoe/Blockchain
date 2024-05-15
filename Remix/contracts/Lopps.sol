// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract Loops{
    uint public v1;
    uint public v2;
    uint public v3;
    uint public v4;
    
    function ourLoop() public {
        for(uint i = 0; i < 20; i++){
            if(i == 10){
                v1 = i;
                continue;
            }

            if(i == 15){
                v2 = i;
                break ;
            }
                v3 = i;
        }

        uint h;
        while( h < 10 ){
            h++;
        }
            v4 = h;

    }
}