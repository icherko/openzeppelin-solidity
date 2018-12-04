pragma solidity ^0.5.1;

import "../drafts/Counter.sol";

contract CounterImpl {
    using Counter for Counter.Count;

    uint256 public theId;

    // use whatever key you want to track your counters
    mapping(string => Counter.Count) private _counters;

    function doThing(string memory key) public returns (uint256) {
        theId = _counters[key].next();
        return theId;
    }
}
