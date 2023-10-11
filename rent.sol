// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract rent {
    
    address payable public landlord;
    string public tenantName;
    uint public tenantAge;
    string public tenantOccupation;

    constructor (string memory name, uint age, string memory Occupation){
        tenantName = name;
        tenantAge = age;
        tenantOccupation = Occupation;
        landlord = payable(msg.sender);
    }

    receive() external payable { 
        landlord.transfer(msg.value);
    }
}
