// SPDX-License-Identifier: MIT

/* 
Crea una funcion promedio(int a, int b, int c)
Donde a>0, b>0, c>0.
Devolve el promedio de a, b y c. La funcion debe ser public. */

pragma solidity ^0.8.17;

contract Testing6 {
    
    function promedio(uint256 a, uint256 b, uint256 c) public pure returns (uint256){
        uint256 result = (a + b + c) / 3;
        return result;
    }
    
}