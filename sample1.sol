pragma solidity 0.7.2;

contract cls {
    int public Percentage;

    address public lecturer;

    modifier onlyLecturer() {
        require(lecturer == msg.sender);
        _;
    }

    /*function setLeturer (address account)
    lecturer = account;*/

    constructor() {
        lecturer = msg.sender;
    }

    function uploadres (int score) public{
       

    }

    function checkres()npublic view onlyLecturer returns (string= memory) {
        if (Percent>= 50 && Percent <= 100)
        {
            return "Passed!"
        if (Percent < 50) {
            return "Failed!"
        }
        if (Percent > 100) {
            return "Awesome you cheated! :)"
        }
        }
    }

}
