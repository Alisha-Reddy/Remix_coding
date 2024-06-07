// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract ParentCont{

    address owner;

    modifier onlyOwner(){
        require(msg.sender == owner, "Should be owner");
        _;
    }
    constructor()  {
        owner = msg.sender;
    }
}

contract Inheritance is ParentCont{

    string secret;

    constructor( string memory _secret)  {
        secret = _secret;
        super;
    }

    function getSecret() public view onlyOwner returns(string memory){
        return secret;
    }


}