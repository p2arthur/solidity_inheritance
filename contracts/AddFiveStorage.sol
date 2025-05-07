// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <=0.9.0;

import {FavoriteNumber} from "./FavoriteNumber.sol";

//Inheritance - We want to override some method from a parent contract
contract AddFiveFaveNumber is FavoriteNumber {
    //overrides
    //virtual overrides
    // Memory means that the variable will only be alive during the excution of the given function
    function addFriend(string memory _name, uint256 _faveNumber)
        public
        override
    {
        Person memory personToAdd = Person(_name, 5);

        friendsMapping[personToAdd.name] = personToAdd.faveNumber;
    }
}
