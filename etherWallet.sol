//SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

contract myWallet{
    event deposit(address _addr, uint _amount);
    event send(address _addr, uint _amount);
    event withdraw(address _addr, uint _amount);

    modifier hasEther(address _addr, uint _amount){
        require(walletBalance[_addr] >= _amount, "not enough balance");
        _;
    }

    mapping(address => uint) public walletBalance;

     receive() external payable {
        walletBalance[msg.sender] += msg.value;
        emit deposit (msg.sender, msg.value);
    }
    function Send(address _receiver, uint _amount) external hasEther(msg.sender, _amount){
        walletBalance[_receiver] += _amount;
        walletBalance[msg.sender] -= _amount;
        emit send(_receiver, _amount);
    }
    
}