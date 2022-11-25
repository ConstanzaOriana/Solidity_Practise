// SPDX-License-Identifier: MIT

/*
Crear una estructura -> struct Estudiante { string nombre; uint256[3] notas; }
Crear dos funciones:
a) set(nombre del estudiante, notas en matematica, nota en historia,nota en ingles) - 
Para establecer el nombre y las notas de un estudiante en el array notas. 
b) get(), para obtener el nombre, las notas en matemáticas, las notas en ciencias
y las notas en inglés del estudiante. Nota - La función será pública.
*/

pragma solidity ^0.8.7;

contract Testing21{
event notasSeteadas(string name,uint mat, uint his, uint ingl,uint cien);
    
    struct Estudiante {
        string  nombre;
        uint[4] notas;
    }
  
     Estudiante nuevoEstudiante;
    
    function setNotas (string memory _name, uint _math,uint _history,uint _english, uint _science) public {
        nuevoEstudiante.nombre=_name;
        nuevoEstudiante.notas[0]=_math;
        nuevoEstudiante.notas[1]=_history;
        nuevoEstudiante.notas[2]=_english;
        nuevoEstudiante.notas[3]=_science;
    emit notasSeteadas(_name, _math,_history,_english,_science);

    }

    function getNotas()  view public returns(uint[4] memory) {
        return nuevoEstudiante.notas;
    }
}