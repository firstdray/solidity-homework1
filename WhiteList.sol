// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract selfWhiteList {
    
    address[] public WhiteList;

    function newAddress(address _address) public  {
        if(msg.sender == _address){
            WhiteList.push(_address);
        }
    }
    
    function check() public view returns(bool){
        for(uint i = 0; i < WhiteList.length; i++){
            if(WhiteList[i] == msg.sender){
                return true;
            }
            return false;
        }
    }
    
    
}
