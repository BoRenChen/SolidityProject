// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./SimpleStorage.sol";


contract StorageFactory is SimpleStorage {
    SimpleStorage[] public simpleStorageArr;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArr.push(simpleStorage);


    }

    function sfStore(uint256 _ssIndex, uint256 _ssNumber) public{
        //Address

        //ABI - Application Binary Interface
        SimpleStorage(address(simpleStorageArr[_ssIndex])).store(_ssNumber);
    }

    function sfGet(uint256 _ssIndex) public view returns(uint256){

        return SimpleStorage(address(simpleStorageArr[_ssIndex])).retrieve();
    }
}