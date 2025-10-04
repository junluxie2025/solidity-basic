// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract MappingExample{
    mapping(address acccout=>uint amount ) public myMapping;

    function setMapping(address _key,uint _value) public{
        myMapping[_key]=_value;
    }
}