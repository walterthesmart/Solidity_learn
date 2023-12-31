// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Todos
{
    struct Todo
    {
       string text;
       bool completed; 
    }
    // An array of 'Todo' structs
    Todo[] public todos;
    function create(string calldata_text) public 
    {
        // 3 ways to initialize a struct
        // - calling it like a function
        todos.push(Todo(_text, false));

        //key value mapping 
        todos.push(Todo({text: _text, completed: false}));

        // initialize an empty struct and the update it
        Todo memory todo;
        todo.text = _text;
        //todo.completed initialized to false

        todos.push(todo);
    }

    //Solidity automatically created a getter for 'todos' so 
    //you don't ned this function
    function get(uint _index) public view returns(string memory text, bool completed)
    {
        Todo storage todo = todos[_index];
        return(todo.text, todo.completed);
    }
    // update text
}