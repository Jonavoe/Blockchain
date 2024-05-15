// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Interface {
    IERC20 public myToken;

    constructor(address _token){
        myToken = IERC20(_token);
    }    

    function myFunc() public view returns (uint256){
        return myToken.totalSupply();
    }

    function myFunctwo() public view returns (uint256){
        return myToken.balanceOf(msg.sender);
    }
}

contract myTokenOne {
    function totalSupply() public pure returns (uint256) {
        return 200;
    }

    function balanceOf(address account) external pure returns (uint256){
        return 200;
    }
}

contract myTokenTwo {
    function totalSupply() public pure returns (uint256) {
        return 500;
    }
    function balanceOf(address account) external pure returns (uint256){
        return 500;
    }
}

interface IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address _to, uint256 _value) external returns (bool);
    function allowance(address _owner, address _spender) external view returns (uint256);
    function approve(address _spender, uint256 _value) external returns (bool);
    function transferFrom(address _from, address _to, uint256 _value) external returns (bool);

} 