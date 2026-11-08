// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleMessage {
    string private message;
    uint256 private counter;
    address public lastUpdater;

    event MessageUpdated(address indexed by, string newMessage);

    constructor(string memory _initial) {
        message = _initial;
    }

    // WRITE function: changes the stored message (costs gas)
    function setMessage(string calldata _newMessage) external {
        message = _newMessage;
        lastUpdater = msg.sender;
        counter += 1;
        emit MessageUpdated(msg.sender, _newMessage);
    }

    // READ function: returns the stored message (free)
    function getMessage() external view returns (string memory) {
        return message;
    }

    // READ function: returns how many times the message was changed (free)
    function getCount() external view returns (uint256) {
        return counter;
    }
}
