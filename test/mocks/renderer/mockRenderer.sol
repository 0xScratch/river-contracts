// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "sstore2/SSTORE2.sol";
import {IRenderer} from "../../../src/core/press/interfaces/IRenderer.sol";

contract MockRenderer {

    ////////////////////////////////////////////////////////////
    // FUNCTIONS
    ////////////////////////////////////////////////////////////

    /// @dev This function is a no-op in this renderer implementation
    function initializeWithData(bytes memory data) external {}

    /// @notice Returns string press URI from a provided sstore2 pointer
    function renderPressURI(address pointer) external view returns (string memory pressURI) {
        return pressURI = abi.decode(SSTORE2.read(pointer), (string));
    } 
}