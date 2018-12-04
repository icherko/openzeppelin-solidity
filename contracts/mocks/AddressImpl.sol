pragma solidity ^0.5.1;

import "../utils/Address.sol";

contract AddressImpl {
    function isContract(address account) external view returns (bool) {
        return Address.isContract(account);
    }
}
