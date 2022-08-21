// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

contract Assignment_1{
    string str = "Hello Solidity";

    //TASK 1
    function printStr() public view returns(string memory){
        return str;
    }

    //TASK 2
    uint state = 10;//State Variable

    function returnStateVariable() public view returns(uint){
        return state;
    }

    //Local Variable Function.
    function returnLocalVariable() public pure returns(uint){
        uint localVariable = 20;

        return localVariable;
    }

}