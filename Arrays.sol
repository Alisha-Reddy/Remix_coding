// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Arrays{
    // Arrays
    uint[] public myArray = [1, 2, 3];
    string[] public stringArray = ["Apple","Ball","Cat"];
    uint256[][] public array2D = [[1, 2, 3],[4, 5, 6]];
    string[] public values;

    function addValue(string memory abc) public{
        values.push(abc);
    }

    function valueCount() public view returns(uint){
        return values.length;
    }
}