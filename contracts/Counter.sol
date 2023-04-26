// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Counter {
    uint256 public sum;
    uint256 public subtracted;
    uint256 public multiplied;
    uint256 public divided;

    function add(uint256 x, uint256 y) public {
        sum = x + y;
    }

    function subtract(uint256 x, uint256 y) public {
        subtracted = x - y;
    }

    function multiply(uint256 x, uint256 y) public {
        multiplied = x * y;
    }

    function divide(uint256 x, uint256 y) public {
        require(y != 0, "y can not equal to ZERO");
        divided = x / y;
    }

    function allResult()
        public
        view
        returns (uint256, uint256, uint256, uint256)
    {
        return (sum, subtracted, multiplied, divided);
    }
}