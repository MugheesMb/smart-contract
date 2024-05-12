// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "contracts/simpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStoragearray;

    function createstoragecontract() public {
        SimpleStorage simpleStorage1 = new SimpleStorage();
        simpleStoragearray.push(simpleStorage1);

    }

    
    function sfstore(uint256 indexarray , uint256 storenum ) public  {
        SimpleStorage simpleStorage = simpleStoragearray[indexarray];
        simpleStorage.store(storenum);

    }

    function sfGet(uint256 indexarray) public view returns(uint256) {
            SimpleStorage simpleStorage = simpleStoragearray[indexarray];
            return simpleStorage.retrieve();
    }
    
}
