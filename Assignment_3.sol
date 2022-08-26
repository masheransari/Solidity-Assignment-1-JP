// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Assignment_3 {

    // Task 1
//    Create a function digitSum(int n). Where n>0. Return the sum of digit for n. For Example - If n=345 then digitSum() must return 12 i.e. 3+4+5 = 12 If n=909 then digitSum() must return 18 i.e. 9+0+9 = 18
    function digiSum(uint n) public pure returns(uint){
        uint a;
        uint totalSum = 0;
        while(n > 0){
            a = n % 10;
            totalSum = totalSum + a;
            n = n / 10;
        }
        return totalSum;
    }
    
    // Task 2
//    Create a function nthTerm(uint n, uint a, uint b, uint c) where n is the nth term to find and a,b,c are the three terms of the series.
    function nthTerm(uint limit, uint a, uint b, uint c) public pure returns(uint){
        uint[100] memory arr;
        uint i;
        arr[1] = a;
        arr[2] = b;
        arr[3] = c;
        for (i = 4; i <= limit; i++) {
            arr[i] = arr[i - 1] + arr[i - 2] + arr[i - 3];
        }
        return arr[limit];
    }
}