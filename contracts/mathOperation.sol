// SPDX-License-Identifier: MIT

/* 
1) Crea una funcion evaluar(int a, int b).
2) Resta la diferencia de a y b desde la suma de a y b.
3) Devolve el resultado de la tarea anterior desde evaluar(). */


pragma solidity ^0.8.7;
contract Testing4 {
    uint256 a;
    uint256 b;
    constructor(uint256 _we, uint256 _wi){
        a = _we;
        b = _wi;
    }
    function evaluate()  public view returns (uint256){
    uint256 result = ((a + b)-(a-b));
    return result;      
    }
}

