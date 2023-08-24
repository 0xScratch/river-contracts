// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IFactory {

    //////////////////////////////////////////////////
    // TYPES
    //////////////////////////////////////////////////    
    
    struct Inputs {
        string pressName; 
        address initialOwner;
        address logic;
        bytes logicInit;
        address renderer;
        bytes rendererInit;
    }

    //////////////////////////////////////////////////
    // ERRORS
    //////////////////////////////////////////////////    

    /// @notice Error when msg.sender is not the router 
    error Sender_Not_Router();    

    //////////////////////////////////////////////////
    // FUNCTIONS
    //////////////////////////////////////////////////       

    /// @notice Deploys and initializes new press
    function createPress(address sender, bytes memory init) external returns (address);
}