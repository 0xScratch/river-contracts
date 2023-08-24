// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface ILogic {
    /// @notice Initializes setup data in logic contract
    function initializeWithData(bytes memory data) external;
    function getSendAccess(address sender, uint256 quantity, bytes32[] memory merkleProof) external returns (bool);
    function getRemoveAccess(address sender, uint256 id) external returns (bool);
}