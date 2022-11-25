// SPDX-License-Identifier: MIT

/* un numero palindrome es un numero que es el mismo de principio a fin y de fin a principio, por ej 545. 
Crea una funcion que se llame esPalindrome(uint) para chequear si un numero es palindrome o no,
debiendo dar result 1 or 0. 
La funcion debe ser public. */ 

pragma solidity ^0.8.7;

contract Testing10 {
    function esPalindrome(uint256 n) public pure returns (bool) {
        uint256 _acum=n%10;
        uint256 number=n/10;
        while(number>0){
            _acum=(_acum*10)+(number%10);
            number=number/10;
        }
        if(_acum==n) {return true;}
    else return false;
    }
}