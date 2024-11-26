//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

interface IERCProxy {
    function proxyType() external pure returns (uint256 proxyTypeId);

    function implementation() external view returns (address codeAddr);
}
