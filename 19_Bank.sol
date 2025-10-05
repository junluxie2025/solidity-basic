// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Bank{
    
    event CallLog(bytes input,bytes output);

    receive() external payable {}

    function withdrawWithTransfer() external{
        payable(msg.sender).transfer(1 ether);
    }

    function withdrawWithSend() external {
        bool success = payable(msg.sender).send(1 ether);
        require(success,"sender failed");
    }

    function withdrawWithCall(bytes memory input) external {
        (bool success,bytes memory data)=payable(msg.sender).call{value:1 ether}(input);
        require(success,"call failed");
        emit CallLog(input,data);
    }
}

contract BankUser{
    Bank bank;
    constructor(address  payable _bank){
        bank = Bank(_bank);
    }

    receive() external payable { }

    function withdrawWithTransfer() external{
        bank.withdrawWithTransfer();
    }

    function withdrawWithSend() external {
        bank.withdrawWithSend();
    }

    function withdrawWithCall(bytes memory input) external {
        bank.withdrawWithCall(abi.encodePacked(input));
    }

    function testPay() external payable {

    }
}