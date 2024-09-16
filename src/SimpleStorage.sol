// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //this is the solidity versions

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value is given
    uint256 public myFavoriteNumber; //0

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPeople; // []

    mapping(string => uint256) public nameToFavoriteNumber;

    // store a number in to myFavoriteNumber
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // return myFavoriteNumber
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // add a new person
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Adds a new person with a name and a favorite number to the list
        listOfPeople.push(Person(_favoriteNumber, _name));
        // mapping get a name and return a favorite number
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
