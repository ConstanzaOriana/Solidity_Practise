// SPDX-License-Identifier: MIT

/*Crea un constructor() para mantener la dirección del propietario. [Pista: usa msg.sender]
Crea una función returnOwner() que devuelva la dirección del propietario. 
Esta función returnOwner() sólo puede ser llamada por el propietario (que establecimos usando constructor()). 
Si alguna otra dirección trata de llamar a esta returnOwner() 
debe revertir con esta declaración "Usted no es el propietario" Nota - La función será pública.

.*/

pragma solidity ^0.8.7;

contract Testing22 {
    address private owner;   
    constructor() {   
    owner=msg.sender;
}
    function returnOwner() public view returns (address) {
        require(msg.sender == owner, "Usted no es el propietario");
        return owner;
    }
}