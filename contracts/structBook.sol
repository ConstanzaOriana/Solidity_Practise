// SPDX-License-Identifier: MIT

/* crea una estructura => struct Libro {
    -  titulo
    - autor
    - uint256 paginas
    - bookid
    }
1. Crea dos funciones : 
a) setLibro(title(string), author(string), pages(uint256), bookid(id)
para setear estos parametros.
b) getLibro() para obtener los datos del libro, autor, titulo paginas e id.
2. La funcion debe ser publica.
*/


pragma solidity ^0.8.7;

contract Testing20{
        string title;
        string author;
        uint256 pages;
        uint256 id;
    constructor (string memory _name, string memory _creator, uint256 _large, uint256 _identificator){
        title = _name;
        author = _creator;
        pages = _large;
        id = _identificator;
    }

    function setBook (string memory _libro,string memory _autor,uint256 _paginas , uint256 _identificador) public {
        
        title = _libro;
        author = _autor;
        pages = _paginas;
        id = _identificador;
    }

    function getBook() public view returns (string memory, string memory, uint256, uint256) {
       return  (title, author, pages, id);      
    }
}