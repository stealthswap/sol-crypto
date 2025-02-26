// SPDX-License-Identifier: GPLv3

pragma solidity ^0.6.0;

import "../ECDSA.sol";

contract ECDSAMock {
    using ECDSA for bytes32;

    function recover(bytes32 hash, bytes memory signature)
        public
        pure
        returns (address)
    {
        return hash.recover(signature);
    }

    function toEthSignedMessageHash(bytes32 hash)
        public
        pure
        returns (bytes32)
    {
        return hash.toEthSignedMessageHash();
    }
}
