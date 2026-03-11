// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/governance/TimelockController.sol";

/**
 * @title DaoTimelock
 * @dev Enforces a time delay for DAO-approved transactions.
 */
contract DaoTimelock is TimelockController {
    /**
     * @param minDelay Minimum time (in seconds) to wait before execution.
     * @param proposers List of addresses allowed to propose.
     * @param executors List of addresses allowed to execute.
     */
    constructor(
        uint256 minDelay,
        address[] memory proposers,
        address[] memory executors
    ) TimelockController(minDelay, proposers, executors, msg.sender) {}
}
