pragma solidity ^0.5.0;

/*
*This level demonstrates that external calls to unknown contracts can still create denial of service attack vectors if a fixed amount of gas is not specified.
*If you are using a low level call to continue executing in the event an external call reverts, ensure that you specify a fixed gas stipend. For example call.gas(100000).value().
*Typically one should follow the checks-effects-interactions pattern to avoid reentrancy attacks, there can be other circumstances (such as multiple external calls at the end of a function) where issues such as this can arise.
*
**/
contract DenialHack {

    function() external payable {
        assert(1 == 2);
    }

}
