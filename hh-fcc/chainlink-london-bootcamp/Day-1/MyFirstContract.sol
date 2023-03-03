pragma solidity ^0.8.7;

contract MyFirstContract {
    uint256 number = 0;
    string[] names;
    mapping(string => uint256) public phoneNumbers;

    function changeNumber(uint256 _num) public {
        number = _num;
    }

    function getNumber() public view returns (uint256) {
        return number;
    }

    function getNumberMultiplied(uint256 _num) public view returns (uint256) {
        return number * _num;
    }

    function addNumbers(uint256 _num1, uint256 _num2) public {
        number = _num1 + _num2;
    }

    function addName(string memory _name) public {
        names.push(_name);
    }

    function getName(uint256 _index) public view returns (string memory) {
        return names[_index];
    }

    function addMobileNumbers(string memory _name, uint256 _mobileNumber)
        public
    {
        phoneNumbers[_name] = _mobileNumber;
    }

    function getNamesLength() public view returns (uint256) {
        return names.length;
    }

    function getNames() public view returns (string[] memory) {
        return names;
    }
}
