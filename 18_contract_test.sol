// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract MyContract {
    event Received(address sender, uint amount);

    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    event FallbackCalled(address sender,uint amount,bytes data);

    function getSig(address addr) external pure returns(bytes4){
        if(addr!=address(0)){
            revert();
        }
        return msg.sig;
    }

    fallback() external payable { 
        emit FallbackCalled(msg.sender, msg.value,msg.data);
    }
}

contract GetSig{
    function getSig() external pure returns(bytes4){
        return msg.sig;
    }
}
