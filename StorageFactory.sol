// SPDX-License_Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage {
    SimpleStorage[] public SSarr;
    function creatSimStorageContract () public {
        SimpleStorage simstor = new SimpleStorage();
        SSarr.push(simstor); 
    }

    function sfStore(uint256 _simstorageIndex,uint256 _simplestoragenumber) public {
        SimpleStorage simstor = SimpleStorage(address(SSarr[_simstorageIndex]));
        simstor.store(_simplestoragenumber);   
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return SimpleStorage(address(SSarr[_simpleStorageIndex])).retrieve();
    }
}   