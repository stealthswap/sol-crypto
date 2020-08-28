# Solidity Cryptographic Library

This a suite of libraries that implement signature validation and merkle proof
verification as a set of smart contracts.

You can use these libraries to have built-in cryptography validation in your
smart-contracts.

## Developement

- Fork and Clone your repository

- Install Dependencies

```sh

npm install

```

- Write Tests and Mocks

- Run and make sure all tests are passing

```sh

npm test

```

## Docs

### ECDSA

Elliptic Curve Digital Signature Algorithm (ECDSA) operations.

These functions can be used to verify that a message was signed by the holder of the private keys of a given address.

- **API** :

```solidity

recover(hash, signature);

```

Returns the address that signed a hashed message (hash) with signature. This address can then be used for verification purposes.

The ecrecover EVM opcode allows for malleable (non-unique) signatures: this function rejects them by requiring the s value to be in the lower half order, and the v value to be either 27 or 28.

```solidity

toEthSignedMessageHash(hash);

```

Returns an Ethereum Signed Message, created from a hash.

### Merkle

```solidity

verify(proof, root, leaf)

```

Returns true if a *leaf* can be proved to be a part of a *Merkle tree* defined by *root*.
For this, a proof must be provided, containing sibling hashes on the branch from the leaf to the root of the tree. Each pair of leaves and each pair of pre-images are assumed to be sorted.
