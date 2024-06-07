// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract HotelRoom{
    // Lessons:  
    // Ether payments
    // Modifiers
    // Visibility
    // Events
    // Enums



    // To state Vacant or Occupied, we use enum
    enum Statuses{
        Vacant, 
        Occupied
    }
    Statuses public currentStatus;

    event Occupy(address _occupant, uint _value);
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier checkStatus{
        // Check status
        require(currentStatus == Statuses.Vacant,"The room is currently occupied");
        _;
    }

    modifier checkPrice(uint _amount){
        // Check price
        require(msg.value >= _amount, "Not enough ether provided.");
        _;
    }
    function book() payable public checkStatus checkPrice(2 ether) {
        currentStatus = Statuses.Occupied;

        // owner.transfer(msg.value);
        (bool sent, bytes memory data) = owner.call{value : msg.value}(" ");
        require(true);
        
        emit Occupy(msg.sender, msg.value);
        
    }
}