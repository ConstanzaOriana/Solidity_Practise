// SPDX-License-Identifier: MIT

/* crea una funcion buscar(array, arrayLength,elementoABuscar). 
Esta funcion debe tomar tres argumentos, una dinamica uint type array, la longitud del array y el elemento a buscar.
2. buscar() buscara un elemento en un array.
 */

pragma solidity ^0.8.7;

contract Testing15 {
    function buscar(int256[] memory array, uint256 n)
        public
        pure
        returns (uint256)
    {
        uint256 i;
        uint256 j;
        uint256 count = 1;

        for (i = 1; i < n; i++) {
            for (j = 0; j < i; j++) {
                if (array[i] == array[j]) {
                    break;
                }
            }
            if (i == j) {
                count++;
            }
        }
        return count;
    }
}