// SPDX-License-Identifier: MIT

/* 
el Factor Comun mas Alto   de dos números es el número más grande que es un factor de ambos números
1. crea una funcion factorComunMasAlto(num1, num2). 
Esta funcion toma argumentos tipo uint.
2. factorComunMasAlto() debe devolver el factor comun mas alto de num1 y num2.
Por ejemplo, si num1 = 60 y num2 = 75, entonces factorComunMasAlto() debe devolver 15.
*/


pragma solidity ^0.8.7;

contract Testing19{
    function getFactorComunMasAlto(uint256 a, uint256 b) public pure returns (uint256){
         uint256 result;
        for(uint256 i=1;i<=a;i++){
            if(a%i==0&&b%i==0){
                result=i;
            }
        }
        return result;
}
}


