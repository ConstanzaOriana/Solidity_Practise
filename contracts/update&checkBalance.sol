// SPDX-License-Identifier: MIT

/*Crear un mapping(address => uint256).
1. Crear una función updateBalance(balance to update). 
Esta función updateBalance() tomará un argumento - una variable de tipo uint. 
Esta función actualizara el saldo de la dirección que ha llamado a esta updateBalance().
2. Crear una función checkBalance(dirección de un usuario) . 
Esta función checkBalance(dirección usuario)() tomará un argumento - una variable de tipo dirección. Esta función devolverá
el saldo del usuario que ha llamado a esta función. 
Con esta función el usuario sólo puede comprobar su propio saldo. Si el usuario intenta comprobar el saldo de otra dirección, la función checkBalance() debería devolver el mensaje "Usted no es el propietario de la cuenta".
Por ejemplo, la dirección 0x123 sólo puede consultar su propio saldo. Si 0x123 intenta comprobar el saldo de 0xab1
entonces checkBalance() devolverá el mensaje "Usted no es el propietario de la cuenta".
Nota - La función será pública.*/

pragma solidity ^0.8.7;

contract LedgerBalance {
    mapping(address => uint256) public balances;
    function updateBalance(uint256 newBalance) public payable {
      balances[msg.sender] += newBalance;
 }
    function checkBalance(address wallet) public view returns (uint256) {
      require(wallet == msg.sender, "Usted no es el propietario de la cuenta");
      return balances[wallet];
   }
}