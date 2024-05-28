// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {SimpleStorage, SimpleStorage2} from "./SimpleStorage.sol";


contract StorageFactory{
    // lets declare SimpleStorage
    SimpleStorage public simpleStorage;

    // lets create a function to deploy SimpleStorage
    function deploySimpleStorage() public{
        simpleStorage = new SimpleStorage();
    }
}
