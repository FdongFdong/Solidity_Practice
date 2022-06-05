//SPDX-License-Identifier: MIT

pragma solidity ^0.5.13;

contract ExceptionExample {
    mapping(address => uint256) public balanceReceived;

    function receiveMoney() public payable {
        balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint256 _amount) public {
        require(
            _amount <= balanceReceived[msg.sender],
            "You don't have enough Ether"
        );
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}
