// SPDX-License-Identifier: MIT

/* crea una funcion digitoSuma(int n) donde n>0;
devolve la suma de los digitos de n.
Por ej. si n=345, entonces digitosSuma(n) debe devolver 12 (3+4+5=12).
La funcion debe ser public. */

pragma solidity ^0.8.17;

contract sumarDigitos {
    function calcular(int128 number) public pure returns (int128) {
        int128 _acum =  number % 10;
            while (number > 0){
             number = number/10;
            _acum += number%10;

            }
    return _acum;
    }
}