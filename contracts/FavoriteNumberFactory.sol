// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <=0.9.0;

import {FavoriteNumber} from "./FavoriteNumber.sol";

contract FavoriteNumberFactory {
    FavoriteNumber[] public favoriteNumberList;

    function createFavoriteNumberContract(uint256 _deployerFaveNumber) public {
        favoriteNumberList.push(new FavoriteNumber(_deployerFaveNumber));
    }

    function fAddFriend(
        uint256 _favoriteNumberIndex,
        string memory name,
        uint256 faveNumber
    ) public {
        // We're gonna need two things in order to make an app call from within the contract to another contract

        // 1. Address
        // 2. ABI - Application Binary Interface - How our current contract can interact with the outter contract
        favoriteNumberList[_favoriteNumberIndex].addFriend(name, faveNumber);
    }

    function fGet(uint256 _favoriteNumberIndex) public view returns (uint256) {
        return favoriteNumberList[_favoriteNumberIndex].getMyFaveNumber();
    }
}
