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

        mapping(int => string) public names;
    address public owner;
    // constructor () {
    //     names[0] = "Joe";
    //     names[1] = "Joe Mn";
    //     names[2] = "Simeon";
    //     names[3] = "Sajin";
    //     names[4] = "Milton";
    //     owner = msg.sender;
    // }
    
    function checkOwner() view  public returns(bool) {
        return (owner == msg.sender);
    }
    
    struct Users {
        string class;
        uint age;
    }
    
    mapping(string => Users) public UsersMap;
    
    function addUsers(string memory _name, string memory _class, uint _age) public {
        UsersMap[_name] = Users(_class,_age);
    }
    
    // Nested mapping
    
    struct Book {
        string author;
        uint releaseDate;
    }
    
    mapping(address => mapping(string => Book)) public usersBooks ;
    
    function addBooks(string memory _book, string memory _author, uint releaseDate) public {
        usersBooks[msg.sender][_book] = Book(_author,releaseDate);
    }
    
    //  Control Flow
     uint[] public arrs = [1,3,4,5];
     
    function check(bool val) public pure returns(string memory ) {
        if(val) {
            return "Its True";
        } else {
            return "Its False";
        }
   
    // for ( uint i = 0; i < arrs.length; i++ ) {
    //       arrs[i]
    // }

    }
    
}

