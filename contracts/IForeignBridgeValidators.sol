pragma solidity 0.4.24;

interface IForeignBridgeValidators {
    function isValidator(address _validator) public view returns(bool);
    function requiredSignatures() public view returns(uint256);
    function setValidators(address[] _validators) public returns(bool);
}
