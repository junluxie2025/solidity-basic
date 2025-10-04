// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract ABI{
    function encodeData(string memory text,uint256 number) public  pure returns(bytes memory,bytes memory){
        return (
            abi.encode(text,number),
            abi.encodePacked(text,number)
        );
    }

    function decodeData(bytes memory encodedData) public pure returns(string memory text,uint256 number){
        return abi.decode(encodedData,(string, uint256));
    }
    //3、 获取当前函数的签名
    function getSelector() public pure returns(bytes4){
        return msg.sig;
    }

    //4、计算函数选择器
    function computeSelector(string memory func) public pure returns(bytes4){
        return bytes4(keccak256(bytes(func)));
    }

    function transfer(address addr,uint256 amount) public pure returns(bytes memory){
        return msg.data;
    }

    //5、调用函数 生成 msg.data
    function encodeFunctionCall() public pure returns(bytes memory){
        return abi.encodeWithSignature("transfer(address,uint256)",0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2,100);
    }

    //6、哈希函数
    function hashFunctions(string memory input) public pure returns(bytes32,bytes32,bytes32){
        bytes memory data = abi.encodePacked(input);
        return(
            keccak256(data),
            sha256(data),
            ripemd160(data)
        );

    }

    //7、数学运算  (add)
    function modularMath(uint256 x,uint256 y,uint256 m) public pure returns(uint256,uint256){
        return(
            addmod(x, y, m),
            mulmod(x, y, m)
        );
    }
    //椭圆曲线恢复公钥
    function recoverAddress(bytes32 hash,uint8 v,bytes32 r,bytes32 s) public pure returns(address){
        return ecrecover(hash, v, r, s);
    }

}