// SPDX-License-Identifier: MIT

/* 
1. Sabemos que un numero primo es un numero mayor a 0 que tiene dos factores, que son 1 y el numero en si.
2. Crea una funcion esPrimo(uint n) que devuelva true si n es primo y false si n no es primo.
3. Si n es primo, entonces la funcion debe devolver 1. Si n no es primo, entonces la funcion debe devolver 0.
Por ejemplo: Si n=103 entonces esPrimo() debe devolver 1 porque 103 es un numero primo. Si n=100 entonces esPrimo(n) debe devolver 0 porque 100 no es primo.
4. La funcion debe ser public. */

pragma solidity ^0.8.7;

contract Testing9 {
    function esPrimo(uint256 n) public pure returns (bool) {
     if(n==0){return false;}
     if(n==1){return false;}
     if(n==4){return false;}
     uint256 _acum=1;
    while(_acum<n/2){
        _acum+=1;
        if (n%_acum == 0) {return false;}

    }
    return true;
}}

