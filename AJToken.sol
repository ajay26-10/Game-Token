// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract AJToken is ERC20{
    address admin;

    constructor()ERC20("AJToken","AJT"){
        admin= msg.sender;
        _mint(msg.sender,100000000000000000000);
    }

    modifier onlyAdmin(){
        require(msg.sender==admin,"Cannot Mint Tokens! Unauthorized Access.");
        _;
    }

    function Mint(address t_holder, uint value) public onlyAdmin {
        _mint(t_holder,value);
    }
    
}