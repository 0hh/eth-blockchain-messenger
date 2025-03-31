//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract BlockchainMessenger {

    uint public changeCounter;

    //msg.sender is the account that deployed the contract
    address public owner = msg.sender; 

    string public message;

    function updateMessageByOwnership(string memory _newMessage) public {
        if (msg.sender == owner) {
            message = _newMessage;
            changeCounter++;
        }
    }

    //msg.value is the payment
    function updateMessageByPayment(string memory _newMessage) public payable {
        if(msg.value == 1 ether) {
            message = _newMessage;
            changeCounter++;
        } else {
            payable(msg.sender).transfer(msg.value);
        }
    }
}
