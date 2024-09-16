# SimpleStorage Smart Contract

This Solidity smart contract allows you to store and manage favorite numbers associated with names and interact with a list of people. It provides basic functionality for storing a number, retrieving it, and managing a list of people with their associated favorite numbers.

## Overview

The SimpleStorage contract includes:

- **Storage of Favorite Number:** Store and retrieve a single favorite number.
- **People Management:** Add a person with a favorite number to a list and map names to their favorite numbers.

## Features

1. **Store Favorite Number**
    - function store(uint256 _favoriteNumber) public
        - Stores a given number as myFavoriteNumber.
2. **Retrieve Favorite Number**
    - function retrieve() public view returns (uint256)
        - Returns the currently stored myFavoriteNumber.
3. **Add Person**
    - function addPerson(string memory _name, uint256 _favoriteNumber) public
        - Adds a new person with a name and a favorite number to the list.
        - Updates the mapping of names to their favorite numbers.

## Contract Code

```
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
        // Add a new person to the list
        listOfPeople.push(Person(_favoriteNumber, _name));
        // mapping get a name and return a favorite number
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
```

## Deployment

To deploy the SimpleStorage contract, use the following commands with a suitable Ethereum environment:

1. **Compile the Contract:**
```
solc --bin --abi SimpleStorage.sol
```
2. **Deploy the Contract:** Use your preferred Ethereum deployment tool to deploy the contract using the compiled bytecode and ABI.

## Usage
Once deployed, interact with the contract using a tool like Remix IDE, Truffle, or Hardhat.
- Store a Number: Call the store(uint256 _favoriteNumber) function with the desired number.
- Retrieve the Stored Number: Call the retrieve() function to get the current stored number.
- Add a Person: Call the addPerson(string memory _name, uint256 _favoriteNumber) function with a name and a favorite number.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

-------------------------------------------------------------------------
Feel free to adjust any sections or add additional information as needed.