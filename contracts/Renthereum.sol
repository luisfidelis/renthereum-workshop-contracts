pragma solidity ^0.4.14;

import './events/RentEvents.sol';

contract Renthereum is RentEvents {

  address public RentLib;

  function Renthereum( address _rentLib ) {
    // Signature of the Rent Library's init function
    bytes4 sig = bytes4(keccak256("init()"));
    address _RentLib = _rentLib;
    bool ret;
    assembly {
      // Add the signature first to memory
      mstore(0x0, sig)
      // Delegate call to the library
      ret := delegatecall(sub(gas, 10000), _RentLib, 0x0, 0x0, 0x0, 0x0)
    }
    RentLib = _RentLib;
  }

  function createOrder (
    string _id,
    string _name,
    string _description,
    uint256 _dailyValue,
    uint _minPeriod,
    uint _maxPeriod) 
    public
    returns (bool)
  {
    require(RentLib.delegatecall(msg.data));
    return true;
  }

   // cancel an available order
  function cancelOrder(uint256 _index)
    public
    returns(bool)
  {
    require(RentLib.delegatecall(msg.data));
    return true;
  }

  function rent(uint256 _index, uint _period) payable
    public
    returns(bool)
  {
    require(RentLib.delegatecall(msg.data));
    return true;
  }

}
