// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract GuestHouse{  // A Contract called GuestHouse

    enum Statuses {Vacant, Occupied}  // an enum to specify whether Vacant or Occupied
    Statuses currentStatus;
    // an event to the details of the tranfer
    event Occupy(address _occupant, uint _value)

    address payable public owner; // payable makes the address enabled to receive money

    constructor() public {
        owner = msg.sender; // the owner is the one who deployed it
        currentStatus = Statuses.Vacant; // the status of the room is vacant by default
    }

    modifier onlyWhileVacant{ // a modifier to check the status of the room.
        // Check Status
        require(currentStatus = Statuses.Vacant, "Currently Occupied");
        _;
    }

    modifier costs (uint _amount) { // a modifier to check whether the right amount of ether has been sent
        //Check price
        require(msg.value >= 2 ether, "Not enough Ether");
        _;
        
    }

    receive() external payable onlyWhileVacant costs(2 ether){ // a special function to trigger booking when ether is sent.
        currentStatus = Statuses.Occupied;
        owner.tranfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }

    // basically what this contract does is book rooms for addresses that send the ether to it. if its not enough the money is not sent
    // if its enough the room is booked. Also it checks whether the room is Occupied or not to prevent double bookings
    // May be errors in it now. But you can try updating the Solidity version
}
