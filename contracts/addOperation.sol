// SPDX-License-Identifier: MIT

/* 
1. Crea una funcion expresion(x,n). 
 expresion() debe devolver la suma de la serie  1 + x + x^2+ x^3+ .. + x^n
Por ejemplo, si x=2 y n=3, entonces expresion() debe devolver 15 (1+2+4+8=15). 
Si x = 5 y n = 1, entonces expresion() debe devolver 6.
*/

pragma solidity ^0.8.7;

contract Testing17{
        uint256 a ;
        uint256 b;
        uint256 c;
        constructor(uint256 firstNo, uint256 secondNo, uint256 thirdNo){
            a = firstNo;
            b = secondNo;
            c = thirdNo;
        }
    function expresion() public view returns(uint256){
        uint256 res = a + b + c;
        return res;   
    }
}
