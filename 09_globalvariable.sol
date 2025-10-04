// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract demo09{
    function test() public{
        // msg.data;
        // tx.origin;
        // block.blockhash(blockNumber);
    }
}

contract BlockInfo{
    function getBlockDetails() public view returns(uint,uint){
        return (block.number,block.timestamp);
    }
 }
