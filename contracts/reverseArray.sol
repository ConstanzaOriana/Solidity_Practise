// SPDX-License-Identifier: MIT

/* 
1. Crea una funcion arrayReverso(array, lengthArray). 
Esta funcion tomara dos argumentos - un type uint dinamico array y la longitud del array.
2. arrayReverso() debe devolver un array con los elementos del array original en orden inverso.
Por ej: Si array = [1,2,3,4,5] entonces arrayReverso() debe devolver [5,4,3,2,1].
3. La funcion debe ser public.
*/  

pragma solidity ^0.8.7;

contract Testing12 {
    function arrayReverso(uint[] calldata _array) public pure returns(uint[] memory) {
    uint length = _array.length;
    uint[] memory arrayReversoo = new uint[](length);
    uint counter = 0;
    for(uint i = length; i >= 1; i--) {
        arrayReversoo[counter] = _array[i-1];
        counter++;
    }
    return arrayReversoo;    
    }
}