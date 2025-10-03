// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Hello3Dot0{
    // string public hello="hello 3.0!";
    // int public account=100;

    // uint public a2= 1*2**256-1;

    // bool public flag=false;

    // address addr = 0xe2FA5dB060942F95A3997928c950BF4e7f1A7501 ;
    
    // bytes2 b2 =hex"1000";

    // enum Status{
    //     Active,
    //     Inactive
    // }

    // int[] arr;

    // string[] arr2;

    // bool[] arr3;

    // address[] arr4;

    // bytes10[] public arr5;

    // string public str = "100";

    // struct Person{
    //     uint8 age;
    //     bool ex;
    //     string name;
    // }

    // Person public zood = Person(18,false,"zood");

    string private hello="hello";

    function sayHello(string memory name) public view returns (string memory){
        return string.concat(hello,name);
    }

    function sayHello2(string memory name) external  view returns (string memory){
        return string.concat(hello,name);
    }

    function sayHello3(string memory name) private  view returns (string memory){
        return string.concat(hello,name);
    }

    function sayHello4(string memory name) internal   view returns (string memory){
        return string.concat(hello,name);
    }

    
    function cancat(string memory base,string memory name) public  pure returns (string memory){
        return string.concat(base,name);
    }

    function setHello(string memory str) public{
        hello=str;
    }
}

    