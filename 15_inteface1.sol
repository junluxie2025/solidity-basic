// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

interface IERC20 {
    function transfer(address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract ERC20 is IERC20 {
    function transfer(address to, uint256 amount) external pure returns (bool) {
        return false;
    }
    function balanceOf(address account) external pure returns (uint256) {
        return 1;
    }
}
