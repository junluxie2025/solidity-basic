// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract StructExample{
    struct Person{
        uint age;
        string name;
        // mapping(string=>string) record;//不能包含mapping 在结构体中
        Hobbie[] hobbies;
    }

    struct Hobbie{
        string label;
        string value;
    }

    Person[] public persons;
    mapping(address=>Person) public personMap;

    function addPerson(Person calldata p) public{
        persons.push(p);
    }

    

    function serPersonMap(Person calldata p,address addr) public{
        personMap[addr]=p;
    }

    // function getMapping() public returns(mapping(address=>Person) ）{

    // }
}