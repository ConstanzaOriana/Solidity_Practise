// SPDX-License-Identifier: MIT

/*
Deberas crear una state variable e iniciarlizarla con 10 y luego deberias crear una funcion returnStateVariable() que devuelva el valor de la statevariable creada.
De igual manera, tenes que crear una variable local e iniciarla con 20 y luego tenes que crear una funcion returnLocalVariable que devuelva el valor de la variable local creada. 
*/


pragma solidity ^0.8.7;
contract Testing2 {
       uint256 public firstNumber = 10;

       function returnStateVariable () public returns (uint256){
           firstNumber;
       }
       
       function returnLocalVariable () public pure returns (uint256){
           uint256 secondNumber = 20;
           return secondNumber;
       }
}
