// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract VarAndTypes{
    // state variables and datatypes
    int256 public myInt =1;
    uint public myUint =1;
    uint256 public myUint256 =1;
    uint8 public myUint8 =1;

    string public myString ="Hello, world!";
    bytes32 public myBytes32 = "Hello, world!";

    address public myAddress = 0x4f8790e41f49320617c7C185c39F858f8765eB59;

    struct MyStruct{
        uint256 myStructUint256;
        string myStructString;
    }
    MyStruct public myStruct = MyStruct(2, "Welcome!");
    MyStruct public myStruct1 = MyStruct(3, "hjbfhjs");

    // Local variable and function
    function getValue() public pure returns(uint){
        uint value =1;
        return value;
    }
}