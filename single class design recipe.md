# Single-Method Programs Design Recipe


## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.


## 2. Design the Method Signature

- Name of class: TodoList
- Doesn't take any parameters
- Returns a string of tasks to do
- Allows tasts to be marked as done and removed from list


## 3. Create Examples as Tests

todo_list = TodoList.new
todo_list.list => []
todo_list.add("Groceries") => ["Groceries"]
todo_list.remove("Groceries") => []


## 4. Implement the Behaviour