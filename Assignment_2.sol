// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

contract Assignment_2 {

    string private stateVar;//State Variable

    //TASK 1
    function printStateVar() public view returns(string memory){
        return stateVar;
    }


    function setStateVariableInfo(string memory _stateVar) public {
        stateVar = _stateVar;
    }

    //TASK 2
    // Subtract the difference of a and b from the sum of a and b.
    function evaluate(uint _a, uint _b) public pure returns(uint) {
        return (_a + _b) - (_a - _b);
    }

    // Task 3: Create a function find(int a). Where a>0.
    // Return the remainder when a is divided by 3.
   function find(uint _a) public pure returns(uint) {
        require(_a>0, "value must be greater than 0"); 
        return _a % 3;
    }

    // Task 4: Create a function average(int a,int b,int c). Where a>0,b>0,c>0.
    //Return the average of a,b and c.
    function average(uint _a,uint _b,uint _c) public pure returns (uint){
        require(_a>0, "First value must be greater than 0"); 
        require(_b>0, "Second value must be greater than 0"); 
        require(_c>0, "Third value must be greater than 0"); 
        return (_a+_b+_c)/3;
    }
}