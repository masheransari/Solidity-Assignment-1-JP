// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

contract primerNumber{

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