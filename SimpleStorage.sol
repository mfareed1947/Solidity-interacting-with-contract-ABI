// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract SimpleStorage {
    uint256 num;

    struct Person {
        uint256 _id;
        string name;
        bool human;
    }

    mapping(uint256 => Person) public data;

    function setter(uint256 _favNum) public virtual {
        num = _favNum;
    }

    function retrive() public view returns (uint256) {
        return num;
    }

    function getter() public view returns (uint256) {
        return num;
    }
}
