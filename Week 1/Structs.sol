//SPDX-License-Identifier: None
pragma solidity ^0.8.13;
contract MyContract {

    //declare struct
    struct User {
        address addr;
        uint score;
        string name;
    } 
    // At this point it is just a template

    //Array of struct
    User[] users;

    //Mapping of struct
    mapping(address => User) userList;

    function Struct_Operations(string calldata _name) external {
        //Create-Syntax 1
        User memory user1 = User(msg.sender, 9, _name);
        User memory user2 = User(msg.sender, 10, _name);
        //Modifying user2 will not modify user1 - Both are Independent

        //Create-Syntax 2
        User memory user3 = User({name: _name, score: 5, addr: msg.sender}); //In any order

        //Read
        user3.addr;

        //Update
        user2.score=7;

        //Delete
        delete user1;

        //push users to the array
        users.push(user2);
        users.push(User(msg.sender, 8, _name));

        //add users to the mapping
        userList[msg.sender] = user3;
        userList[msg.sender] = User(msg.sender, 6, _name);
    }

}