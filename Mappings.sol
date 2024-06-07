// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Mappings{
    // Mapping
    mapping(uint => string) names;
    constructor(){
        names[1] ="Alisha";
        names[2] ="Mannesh";
    }
    // Mapping with struct
    struct Book{
        string title;
        string author;
    }
    mapping(uint => Book) books;
    function addBook(
        uint _id,
        string memory _title,
        string memory _author
    ) public{
        books[_id] = Book(_title, _author);
    }
    // Nested mapping
    mapping(address => mapping(uint => Book)) myBook;
    function addMyBook(
        uint _id,
        string memory _title,
        string memory _author
    ) public {
        myBook[msg.sender][_id]=Book(_title,_author);
    }
}