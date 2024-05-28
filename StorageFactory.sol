// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract SimpleStorage{
    // creating a struct
    struct people{
        int age;
        string name;
    }

    // creating an array for it
    people[] public listofPeople;

    // manually adding first value
    constructor() {
        listofPeople.push(people(8, "alex"));
    }

    // creating a mapping to map from age to name
    mapping(int => string) public ageToName;

    // creating a function to add values manually according to user input
    function manualAddition(int _age, string memory _name) public{
        listofPeople.push(people(_age, _name));
        ageToName[_age] = _name;
    }
}

contract storageFactory{
    SimpleStorage public simpleStorage;

    // now, we'll create a function to deploy the SimpleStorage contract
    function deploySimpleStorage() public{
        simpleStorage = new SimpleStorage();
    }
}

