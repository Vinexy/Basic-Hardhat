// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Counter{
    uint256 total;
    uint256 subtracted;
    uint256 multiplied;
    uint256 divided;

    function add(uint256 x, uint256 y) public {
        total = x+y;
    }
    function subtract(uint256 x, uint256 y) public {
        subtracted = x-y;
    }
    function multiply(uint256 x, uint256 y)public {
        multiplied = x*y;
    }
    function divide(uint256 x, uint256 y)public {
        require(y != 0,"y can not equal to ZERO");
        divided = x / y;

    }
    function allResult() public view returns(uint256,uint256,uint256,uint256){
        return(total, subtracted, multiplied, divided);
    }

}