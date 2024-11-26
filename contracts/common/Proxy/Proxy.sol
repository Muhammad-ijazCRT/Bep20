//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./IERCProxy.sol";

abstract contract Proxy is IERCProxy {
    function delegatedFwd(address _dst, bytes memory _calldata) internal {
        assembly {
            let result := delegatecall(
                gas(),
                _dst,
                add(_calldata, 0x20),
                mload(_calldata),
                0,
                0
            )
            let size := returndatasize()
            let ptr := mload(0x40)
            returndatacopy(ptr, 0, size)
            switch result
                case 0 { revert(ptr, size) }
                default { return(ptr, size) }
        }
    }

    function proxyType() external virtual override pure returns (uint256 proxyTypeId) {
        proxyTypeId = 2;
    }

    function implementation() external virtual override view returns (address);
}
