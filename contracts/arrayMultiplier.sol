// SPDX-License-Identifier: MIT

/* 
1. Crea una funcion par(array, arraylength).
par() debe tomar dos tipos de argumentos - uno es un uint type array y el otro length del array.
2. la funcion par() debe multiplicar cada elemento del array por dos. 
Por ejemplo: Si array = [1,2,3,4,5] entonces par() debe devolver [2,4,6,8,10].
3. La funcion debe ser public.
*/
pragma solidity ^0.8.7;

contract Testing13 {
    uint[] public numbers = [1, 2, 3];
    uint[] public numbers2;

    function par(uint a) public returns (uint[] memory){
        uint b = numbers.length;
        uint counter = 0;
        for (uint i = 1; i <= b; i++)
        {
        numbers2.push(numbers[i] * a);
        counter++;
        }     
    return numbers2;
    }
    
}