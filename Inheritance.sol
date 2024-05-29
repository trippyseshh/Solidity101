// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {SimpleStorage1} from "./SimpleStorage.sol";

contract addFive is SimpleStorage1{
    function valueInt2(int _int2) public override{
        int2 = _int2 +5;
    }
}
