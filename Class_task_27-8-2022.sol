// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

contract Class_Assignment{

    //Task 1
    function printStr() public pure returns(string memory){
        return "Hi Solidity";
    }

    //TASK2 State Variable 
    uint stateVar = 30;

    function getStateVar() public view returns(uint){
        return stateVar;
    }

    //TASK3 localVariable 
    function getLocalVar() public pure returns(uint){
        uint a = 25;
        return a;
    }

    //TASK4
    uint private task4Var = 100;
    function setTask4Var(uint _taskVar) public {
        task4Var = _taskVar;
    }

    function getTask4Var() public view returns(uint){
        return task4Var;
    }

    //TASK5 -- Sum and Subtract
    function evaluate(uint _a,uint _b) public pure returns(uint){
        return (_a + _b) - (_a - _b);
    }

    string seriesStr = "";
    function nthTerm(uint limit, uint a, uint b, uint c) public pure returns(uint[] memory){
        uint[] memory arr;
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;
        for (uint i = 3; i <= limit; i++) {
            arr[i] = arr[i - 1] + arr[i - 2] + arr[i - 3];
            // string.concat(seriesStr, )
        }
        return arr;
    }

    // TASK Prime Number
    function findPrimeNumber(uint number) public pure returns(string memory){
        bool isPrime = true;
        for(uint i=2;i<number;i++){
            if(number%i==0){
                isPrime=false;
                break;
            }
        }
        if(isPrime){
            return "Prime Number";            
        } else {
            return "No Prime";
        }
    }

}