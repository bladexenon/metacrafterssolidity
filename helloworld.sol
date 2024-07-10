// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    uint256 public value;

    constructor() {
        value = 0;
    }

    function setValue(uint256 newValue) public {
        require(newValue > 0, "Value must be greater than zero");
        value = newValue;
    }

    function divide(uint256 divisor) public view returns (uint256) {
        require(divisor > 0, "Divisor must be greater than zero");
        return value / divisor;
    }

    function assertValue() public view {
        assert(value > 0);
    }

    function resetValue() public {
        if (value == 0) {
            revert("Value is already zero");
        }
        value = 0;
    }
}
