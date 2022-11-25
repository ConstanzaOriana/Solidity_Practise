// SPDX-License-Identifier: MIT

/*
Concatenar dos cadenas.
Cree la función concatenar ( ).  
Esta función tomará dos argumentos, es decir, la cadena 1 y la cadena 2. Concatenará la cadena 1 y la cadena 2 y devolverá la cadena concatenada.
*/


pragma solidity ^0.8.7;

contract Testing25{

    function concatenar (string memory _str1, string memory _str2) public pure returns(string memory){
        return string.concat(_str1, " ", _str2);
    }
}