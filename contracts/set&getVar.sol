// SPDX-License-Identifier: MIT

/* tenes que crear una state variable de uint type (no necesariamente public)
Tenes que crear un set () con un argument. Y setear el valor de la state variable creada con el valor pasado 
como argument al set(). Luego, crea otra funcion get() que devuelva el valor de la state variable. */


pragma solidity ^0.8.12;

contract Testing3 {
    uint256 stateVar;

    constructor (uint256 _initialState){
        stateVar = _initialState;
    }

    function setVar (uint256 _value) public{
        stateVar = _value;
    }   

    function getVar() public view returns (uint256) {
        return stateVar;
    }
}

