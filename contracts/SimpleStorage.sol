// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage {
    
    uint256 public favoriteNumber;

    struct People{
        uint256 favNumber;
        string name;
    }

    //Dynamic Array
    People[] public listPeople;
    mapping(string => uint256) public nameToFavNumber;
    
    //Fix Array
    //People[1] public listPpl2
    
    function store(uint256 _favoriateNumber) public  {
        favoriteNumber = _favoriateNumber;
    }
    
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    //memory - after exe delete 
    //stroage - keep it
    function addPerson(string memory _name, uint256 _favNumber) public{
        listPeople.push(People(_favNumber, _name));
        nameToFavNumber[_name] = _favNumber;
    }


}
