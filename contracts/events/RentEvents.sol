pragma solidity ^0.4.14;

contract RentEvents {
   
  event Ordered(
    uint256 _index, 
    string _id,
    address _owner,
    string _name,
    uint256 _value
  );

  event Rented(
    uint256 _index,
    string _id,
    address _owner,
    address _customer,
    uint _period,
    uint256 _value
  );

  event Canceled(
    uint256 _index,
    string _id,
    address _owner,
    string _name,
    uint256 _value 
  );

}
