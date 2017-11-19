pragma solidity ^0.4.14;

contract Renthereum {

  address public RentLib;

  function Renthereum( address _rentLib ) {
    // Signature of the Rent Library's init function
    bytes4 sig = bytes4(keccak256("init()"));
    address _RentLib = _rentLib;
    uint256 ret;
    assembly {
      // Add the signature first to memory
      mstore(0x0, sig)
      // Delegate call to the library
      ret := delegatecall(sub(gas, 10000), _RentLib, 0x0, 0x0, 0x0, 0x0)
    }
    require(ret != uint256(0));
  }

  function createOrder (uint256 _index, uint _period) 
    public
    returns (bool)
  {
    require(RentLib.delegatecall(bytes4(keccak256("createOrder(uint256,uint")), _index, _period));
    return true;
  }

}
