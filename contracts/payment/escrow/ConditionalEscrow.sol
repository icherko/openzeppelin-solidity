pragma solidity ^0.5.1;

import "./Escrow.sol";

/**
 * @title ConditionalEscrow
 * @dev Base abstract escrow to only allow withdrawal if a condition is met.
 * @dev Intended usage: See Escrow.sol. Same usage guidelines apply here.
 */
contract ConditionalEscrow is Escrow {
    /**
    * @dev Returns whether an address is allowed to withdraw their funds. To be
    * implemented by derived contracts.
    * @param payee The destination address of the funds.
    */
    function withdrawalAllowed(address payee) public view returns (bool) {
        require(payee != address(0));
        this;
    }

    function withdraw(address payable payee) public {
        require(withdrawalAllowed(payee));
        super.withdraw(address(payee));
    }
}
