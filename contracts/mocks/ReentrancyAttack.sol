pragma solidity ^0.5.1;

contract ReentrancyAttack {

    function callSender(bytes4 data) public {
        // solium-disable-next-line security/no-low-level-calls
        (bool result,) = msg.sender.call(abi.encodeWithSelector(data));
        require(result);
    }

}