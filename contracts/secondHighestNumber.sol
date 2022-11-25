// SPDX-License-Identifier: MIT


/* 
1. Crea una funcion segundoMax(array, arraylength). 
Esta funcion, tomara dos argumentos, una dinamic int type array y la longitud del array.
3. segundoMax() debe devolver el segundo numero mas grande del array. 
Por ejemplo, si array = [40, 12, 31, 6], entonces segundoMax() debe devolver 31.*/

pragma solidity ^0.8.7;


contract Testing18 {
    function segundoMax(uint256[] memory array, uint256 n)
        public
        pure
        returns (uint256)
    {
        for (uint256 i = 0; i < n - 1; ++n) {
            uint256 acum = 0;

            for (uint256 e = 0; e < n - e - 1; ++e) {
                if (array[e] > array[e + 1]) {
                    uint256 temp;
                    temp = array[e+1];
                    array[e+1] = array[e];
                    array[e] = temp;

                    acum = 1;
                }
            }

            if (acum == 0) {
                break;
            }
        }
        return array[n-2];
    }
}