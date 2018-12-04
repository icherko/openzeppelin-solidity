pragma solidity ^0.5.1;

import "../token/ERC20/ERC20.sol";
import "../token/ERC20/ERC20Detailed.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 * 
 * This file is designed to be used with Truffle to create an ERC20 token from the local machine.
 * For Remix and Etherscan use the flat version of this file that has all the code imported already.
 */

contract SimpleToken is ERC20, ERC20Detailed {
    /**
     * @dev Constructor that gives msg.sender all of existing tokens.

     * enter name of coin with quotes eg "Simple Coin" into _tokenName
     * enter symbol with quotes eg "SIMP" into _tokenSymbol
     * decimals is usually 18 into _decimalUnits
     * your total number of coins eg 100 million is 100000000 which goes into _initialAmount
     */
    constructor (
        uint256 _initialAmount,
        string memory _tokenName,
        uint8 _decimalUnits,
        string memory _tokenSymbol

    ) public ERC20Detailed(_tokenName, _tokenSymbol, _decimalUnits) {
        _mint(msg.sender, _initialAmount * (10 ** uint256(_decimalUnits)));
    }
}