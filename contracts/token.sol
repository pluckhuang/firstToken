// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PluckToken is ERC20Capped, Ownable {
    constructor(uint256 cap) ERC20("PluckToken", "PLK") ERC20Capped(cap) {
        _mint(msg.sender, 100000000 * 10**18);
    }

    function issueToken() public onlyOwner {
        _mint(msg.sender, 1 * 10**18);
    }
}
