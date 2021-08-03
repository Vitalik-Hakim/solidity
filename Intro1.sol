// Paste the license up here
pragma solidity 0.7.2;

contract Multiplication {   // the name of my contract is   Multiplication
    uint initNum1 // I declared an integer called initial number called initNum1
    uint initNum2; // same here

    constructor(){
        uint result = initNum1*initNum2;
    }
  

    function multiply() public view {    // Created a public function to multiply these two integers
        initNum1*initNum2;
    }

    function showResult() public view returns (uint){
        if (result >= 10)
        {
            return result
        }
        if (result < 10)
        {
            return " Low calculation"
        }
    }
}

