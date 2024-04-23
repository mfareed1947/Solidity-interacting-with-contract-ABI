// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract FactoryStorage {
    SimpleStorage[] public simpleStorageList;

    function createSimpleStorageFunc() public {
        SimpleStorage newSimpleStorageList = new SimpleStorage();
        simpleStorageList.push(newSimpleStorageList);
    }

    function sfStore(uint256 _simpleContractIndex, uint256 _newSimpleContract)
        public
    {
        SimpleStorage mySimpleStorage = simpleStorageList[_simpleContractIndex];
        mySimpleStorage.setter(_newSimpleContract);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return simpleStorageList[_simpleStorageIndex].retrive();
    }
}
