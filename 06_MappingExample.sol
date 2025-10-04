// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract MultiMapping{
    mapping(address=>mapping(string=>uint256)) public userBalances;
    function setUserBalance(address addr, string memory currency,uint256 amount) public{
        userBalances[addr][currency]=amount;
    }

    function getUserBalance(address user,string memory currency) public view returns(uint256){
        return userBalances[user][currency];
    }

    // function getMapping(string calldata key) public returns (mapping(string=>uint256){

    // }

    function deleteUserBalance(address addr,string memory currency) public {
        delete userBalances[addr][currency];
    }

}