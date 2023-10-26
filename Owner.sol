// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Owner {

    address private _owner;
    event OwnerSet(address owner);

    function setOwner(address OwnerAddress) public {
        _owner = OwnerAddress;
        emit OwnerSet(_owner);
    }

    function getCurrentOwner() public view returns(address){
        return _owner;
    }
}
