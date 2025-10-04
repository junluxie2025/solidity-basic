// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Caller{
    function testMsg() public view returns(address){
        return msg.sender;
    }
    //tx.origin 容易导致安全漏洞
    function testTx() public view returns(address){
        return tx.origin;
    }
}

contract Callee{
    Caller caller;

    constructor(){
        caller = new Caller();
    }

    function  testMag() public view returns(address){
        return caller.testMsg();
    }

    function testTx() public view returns(address){
        return caller.testTx();
    }

}