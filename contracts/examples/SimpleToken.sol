pragma solidity ^0.5.0;

import "../token/ERC20/ERC20.sol";
import "../token/ERC20/ERC20Detailed.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract SimpleToken is ERC20, ERC20Detailed {
    uint256 public INITIAL_SUPPLY = 10000 * (10 ** uint256(decimals()));

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
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