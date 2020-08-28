// SPDX-License-Identifier: GPLv3

pragma solidity ^0.6.0;

import {Merkle} from "../Merkle.sol";

contract MerkleWrapper {
    function verify(
        bytes32[] memory proof,
        bytes32 root,
        bytes32 leaf
    ) public pure returns (bool) {
        return Merkle.verify(proof, root, leaf);
    }
}
