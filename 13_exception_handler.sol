// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract HandleError{
    
    error Unauthorized();
    error InsufficientBalance(uint256 available,uint256 required);
    error TransferFailed(address from,address to,uint256 amount,string reason);

    function requireError(bool condition) public pure returns(uint256){
        require(condition,"input is not true");
        return 1;
    }

    function assertError(bool condition) public pure returns(uint256){
        assert(condition);
        return 2;
    }

    function revertError(bool condition) public pure returns(uint256){
        if(!condition){
            revert("123");
        }
        return 3;
    }

    function revertError2(bool condition) public pure returns(uint256){
        if(!condition){
            revert Unauthorized();
        }
        return 3;
    }

    function revertError3(bool condition) public pure returns(uint256){
        if(!condition){
            revert InsufficientBalance(10,20);
        }
        return 3;
    }

    
    function revertError4(bool condition) public view returns(uint256){
        if(!condition){
            revert TransferFailed(address(this),msg.sender,10,"20");
        }
        return 3;
    }
}

contract catchTryCatch{
    HandleError public he;

    constructor(){
        he = new HandleError();
    }

    function trycatch(bool condition) public view returns (string memory){
        try he.requireError(condition) returns (uint256){
            //调用成功制定的代码
            //可以使用返回值 result
            return "success";
        }catch Error(string memory reason){
            //当revert(reason string)或 require(false, reasonstring)被调用时
            //可以访问reason
            return reason;
        }catch Panic(uint){
            //当发生panic 错误时，(如除以0 数组越界等)
            // error Code 表示错误类型
            return "panic";
        }catch(bytes memory lowLevelData){
            //当错误不符合上述任何类型时
            //包含低级错误
            return string(lowLevelData);
        }
    }

}

contract Owner{
    address public owner;

    constructor(){
        owner=msg.sender;
    }

    modifier onlyOwner{
        require(msg.sender==owner,"you are not the owner");
        _;
    }

    function changeOwner(address newOwner) public onlyOwner{
        owner=newOwner;
    }
}