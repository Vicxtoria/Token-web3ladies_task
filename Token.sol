// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract VICTORIAToken is ERC20{
    constructor() ERC20("VICTORIAToken", "VCT"){
        _mint(msg.sender, 1000000*10*18);

    }

    event Transfer (address indexed from, address indexed to, uint256 value);
    event Approval (address indexed owner, address indexed spender, uint256 value);

    mapping(address => uint) balance;
    mapping(address => mapping(address => uint)) balance;

    function totalSupply() public view virtual returns(uint256);

    function balanceof(address who) public view virtual returns(uint256);

    function transfer(address to, uint256 value) public virtual returns (uint256);

    function allowance(address owner, address spender) public virtual view returns (uint256);

    function transferFrom(address from, address to, uint256 value) public virtual return (bool);
}
