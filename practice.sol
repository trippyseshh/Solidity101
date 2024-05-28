// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage{
    // defining types
    int int1 = 8;
    int int2;
    string str1 = "string";
    address addr1 = 0xE9cf31bbd4619Df9353F817552B5423b0Ed6d69a;

    // defining int2
    function valueInt2(int _int2) public{
        int2 = _int2;
    }

    // printing int2
    function printInt2() public view returns(int){
        return int2;
    }

    // defining arrays
    int[] arr1; // dynamic array
    int[3] arr2 = [int(2), int(-3), int(0)];

    // adding values to arr1 manually using constructor
    // constructor(){
    //     arr1.push(3);
    // }

    // adding values to arr1 according to user input
    function pushArr1(int _arr1) public{
        arr1.push(_arr1);
    }

    // printing values of arr1
    function viewArr1() public view returns(int[] memory){
        return arr1;
    }

    // creating an array with string and integer data type
    // we will be using struct for it

    struct people{
        int age;
        string name;
    }
    // creating an array to support this struct
    people[] public People;

    // adding value manually
    constructor(){
        People.push(people(8, "Alex"));
    }

    // creating a function to add values according to user input
    function AddingPeopleManually(int _age, string memory _name) public{
        People.push(people(_age, _name));
        ageToname[_age] = _name;
    }

    //creating a mapping to map names using age
    mapping(int => string) public ageToname;

}