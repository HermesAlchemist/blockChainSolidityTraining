// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts;

    
    function createSimpleStorageContract() public 
    {
        listOfSimpleStorageContracts.push(new SimpleStorage());
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _SimpleStorageNewNumber) public
    {
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_SimpleStorageNewNumber);
    }

    function getSfStore(uint256 _simpleStorageIndex) public view returns(uint256)
    {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}


