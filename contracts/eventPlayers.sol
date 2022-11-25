// SPDX-License-Identifier: MIT


 /*Crear un array que almacene las direcciones de los jugadores del equipo.
  1. Crear un array(tipo de dirección) que almacene sólo 16 elementos.
  2. getTeamPlayers() - Para devolver todos los elementos del array.
  3. selectJerseyNumber() - Tomará sólo un argumento de tipo uint y devolverá la dirección de los jugadores del array creado anteriormente. 
  a) El argumento pasado a la función debe ser mayor que igual a cero y menor que igual a 15. [Sugerencia - Use require]
*/

pragma solidity ^0.8.7;

contract Testing24 {
  
  event PlayerAdded(uint number, address _add);
  struct Player {
    uint number;
    address _add;
  }

  Player[] public players;

  uint public number =0;

  function getTeamPlayers() public  {
    uint _number=number;
    address _add=msg.sender;
    
    require (_number <= 16, "Ya hay 16 jugadores");
    players.push(Player(_number,_add));
    emit PlayerAdded(_number,_add);
    number +=1;
  }}