// SPDX-License-Identifier: MIT

/* crea una funcion numreverse(uint n). Esta funcion devolvera el numero reverso de n.
For ejemplo, si n=123, entonces numreverse(n) debe devolver 321.
La funcion debe ser public. */

pragma solidity ^0.8.7;

contract Testing11 {
    function numreverse(uint i, uint r) public view returns(uint) {
      if (i != 0) {
        uint least_digit = i % 10;
        if (r >= type(uint).max / 10 && (r > type(uint).max / 10 || least_digit > type(uint).max % 10)) {
          return 0; 
        }
        r = numreverse(i / 10, r * 10 + least_digit);
      }
      return r;
    }
    
    function reverse_int(uint i) public view returns(uint) {
      return numreverse(i, 0);
    }
}
