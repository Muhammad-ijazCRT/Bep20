// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ChildERC20Implementation is ERC20 {
    constructor() ERC20("Child Token", "CHILD") {
        _mint(msg.sender, 1000 * 10**decimals());  // Example minting, adjust as needed
    }
}
