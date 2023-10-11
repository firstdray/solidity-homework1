// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {

    uint num;

    function increment() external returns(uint){
        return num += 1;
    }
}

contract counterInteraction {
    
    Counter public myCounter;


    constructor(address counterAddress){
        myCounter = Counter(counterAddress);
    }

    function counterIncrement() external {
        myCounter.increment();
    }
}
