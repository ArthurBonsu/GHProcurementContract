// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./EntityContract.sol";

contract PublicProcurementAuthority is EntityContract {

    constructor(
        string memory _name,
        address _entityAddress,
        address _headOfBody,
        address _assistant,
        uint256 _yearOfSetup,
        string[] memory _functions
    ) EntityContract(_name, _entityAddress, _headOfBody, _assistant, _yearOfSetup, _functions) {}

    function ensureCompliance() public pure returns (string memory) {
        return "PPA ensures compliance with procurement regulations by enforcing the Public Procurement Act.";
    }
}
