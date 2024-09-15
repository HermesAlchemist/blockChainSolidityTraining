// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleStorage 
{    
    uint myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => bool) public nameToFavoriteNumber;

    function addPeople(string memory _name, uint256 _favoriteNumber) public 
    {
        listOfPeople.push
        (
            Person
            (
                _favoriteNumber, 
                _name
            )
        );
    }

    function store(uint256 _favoriteNumber) public virtual
    {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) 
    {
        return myFavoriteNumber;
    }
}

contract SimpleStorage2 {}
contract SimpleStorage3 {}
contract SimpleStorage4 {}