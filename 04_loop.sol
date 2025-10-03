// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
contract ForLoopExample{

    function basicFor() public pure returns(uint){
        uint sum = 0;
        uint i=0;
        for(;;){
            if(i>=10){
                break;
            }
            sum+=i;
            i++;
        }
        return sum;
    }

    function basicWhile() public pure returns(uint){
        uint sum = 0;
        uint i=0;
        while(i<10){
            sum+=i;
            i++;
        }
        return sum;
    }

    function basicDoWhile() public pure returns(uint){
        uint sum=0;
        uint i=0;
        do{
            sum+=i;
            i++;
        }while(i<10);
        return sum;

    }

}