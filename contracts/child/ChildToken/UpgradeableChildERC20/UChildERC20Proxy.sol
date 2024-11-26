// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "../../../common/Proxy/UpgradableProxy.sol";

contract UChildERC20Proxy is UpgradableProxy {
    constructor(address _proxyTo) UpgradableProxy(_proxyTo) {}
}
