// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Padre {
    function foo() public pure virtual returns (string memory){
        return "Padre";
    }
    
}

contract PrimerHijo is Padre {
    function foo() public pure override  virtual returns (string memory){
        return "Padre";
    }
}

contract SegundoHijo is Padre {
    function foo() public pure override  virtual returns (string memory){
        return "Padre";
    }

}

contract PrimerNieto is Padre {
    function foo() public pure override  virtual returns (string memory){
        return super.foo();
    }
}

contract SegundoNietois is Padre, SegundoHijo{
    function foo() public pure override(Padre,SegundoHijo)  virtual returns (string memory){
        return "Padre";
    }
}

contract TercerNieto {

}