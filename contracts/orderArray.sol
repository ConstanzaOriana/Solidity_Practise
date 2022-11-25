// SPDX-License-Identifier: MIT

/* 
1. crea una funcion ordenar(array, arrayLength). 
Esta funcion debe tomar dos argumentos, una dinamica uint type array y la longitud del array.
2. ordenar() debe devolver un array con los elementos del array original en orden ascendente.
Por ejemplo, si array = [5,4,3,2,1] entonces ordenar() debe devolver [1,2,3,4,5].
3. La funcion debe ser public. 
*/

pragma solidity ^0.8.7;

contract Testing14 {
    function ordenar(uint[] calldata _array) public pure returns(uint[] memory) {
    uint length = _array.length;
    uint[] memory ordenar = new uint[](length);
    uint j = 0;
    for(uint i = length; i >= 1; i++) {
        ordenar[j] = _array[i+1];
        j--;
    }
    return ordenar;
    }
}
