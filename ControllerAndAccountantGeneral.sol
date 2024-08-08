// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./EntityContract.sol";

contract ControllerAndAccountantGeneral is EntityContract {

    constructor(
        string memory _name,
        address _entityAddress,
        address _headOfBody,
        address _assistant,
        uint256 _yearOfSetup,
        string[] memory _functions
    ) EntityContract(_name, _entityAddress, _headOfBody, _assistant, _yearOfSetup, _functions) {}

    function executePayments() public pure returns (string memory) {
        return "Controller and Accountant General executes payments under the instruction of the Ministry of Finance.";
    }
}
