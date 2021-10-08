// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract pratice  {
    
     
    uint public countD = 1; 
    //  above variable is a state variable which it is stored on blockChain
    // Public --> Accessed inside or outside of the contract Also Solidity creeates a getter method for public variables
    
    // constructor()  {
    // Executes Only one time when deployed to the blockChain 
        // count = 10;
    // }
    
    // function getCount() public  view returns (uint) {
    //     return count;
    // }
    
    function addCount() public {
        countD++;
    }
    
    // Pure --> * Only calls other pure functions 
            //  ** Cannot access state variables
    function localVariableEx () public pure returns(uint) {
        uint item = 100;
        return item;
    }
    
    
    
    
    function test() public pure returns(string memory) {
        return "Hello world";
    }

    // DataTypes

    uint  myint = 1; 
    //  Only positive values also there is other specific values like unit256,uint248, unit8 etc...
    //  * Note --> uint without number on last is uint256
    
    string name = "Joe";
    
    bytes32 addresss = "Hello hey";
    
    address myad = 0x829BD824B016326A401d083B33D092293333A830;
    
    struct person   {
        bytes32 name;
        string addresss;
        address sender;
        uint age;
    }
    
    struct person2 {
        int balance;
        uint age;
        string name;
       
    }
    person2 joeMn = person2 (-1,21,"Jpe");
    
    person  Joe = person("Joe","adddzx",0x829BD824B016326A401d083B33D092293333A830,25);
    
    //  Arrays
    
    string[] public myarr = ["Joe","mon"];
    uint[]  myarr2d = [1,2,3];
    string[]  arr3;
    uint[][] public arr2D = [[1,2,3],[1,1,2]];
    
    function addValtoArr(string memory _str) public {
        arr3.push(_str);
    }
    
    function viewMyArr() public view returns (uint) {
        return arr3.length;
    }
    
    // mapping
    // mapping(key => value) Name;
    
    mapping(int => string) public firstMap;
    
}

