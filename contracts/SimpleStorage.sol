//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract changeNumber {
    uint public myNum = 12;

    function setNumber (uint favNum) public {
        myNum = favNum;
        getNumber();
    }

    mapping (string => string) public nameToCar;

    struct Cars {
        string name;
        string favouriteCar;
    }

    Cars[] public cars;

    function getNumber() public view  returns (uint256) {
        return myNum;
    }
    function addFavCars(string memory _name, string memory _favouriteCar) public {
        cars.push(Cars(_name, _favouriteCar));
        nameToCar[_name] = _favouriteCar;
    }
}