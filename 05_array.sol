// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayContract8{
    bytes public bs="abc\x22\x22" ;//通过十六进制字符串初始化
    bytes public _data=new bytes(10);//创建一个长度为10的字节沪苏浙

    string public str0;
    string public str1 = "TingXiong\u718A";//使用Unicode编码值

    function  readBytesByIndex(uint256 i) public view returns(bytes1){
        return bs[i];
    }

    function readBytesIndexByBytes1(bytes1 d) public view returns(int256){
        for(uint256 i=0;i<bs.length;i++){
            if(bs[i]==d){
                return int256(i);
            }
        }
        return -1;
    }
    //string 不支持按索引读取
    // function readStrByIndex(uint256 i) public view returns(string memory){
    //     return str1[i];
    // }

    function testSlice(bytes calldata data,uint256 start,uint256 end) public pure returns(bytes memory){
        return data[start:end];
    }

}