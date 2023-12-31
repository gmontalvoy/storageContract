// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract storageContract {
    uint[5] private numbers;
    uint private count = 0;

    function addNumber(uint _number) public {
        if (count >= 5) {
            count = 0;
            numbers[count] = _number;
            count++;
        } else {
            numbers[count] = _number;
            count++;
            }
    }

    function getArray() public view returns(uint[5] memory _numbers) {
        return numbers;
    }
}
