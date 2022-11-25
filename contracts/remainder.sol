// SPDX-License-Identifier: MIT

/* Crea una funcion find(int a) donde a>0;
Devolve el remainder cuando a es dividido por 3. 
La funcion debe ser public. */

pragma solidity ^0.8.7;

contract Testing5{

    function find(uint a) public pure returns(uint256){
        if(a>0){
            uint modulo =a%3;
            return  modulo;
        }
    }
   
}
