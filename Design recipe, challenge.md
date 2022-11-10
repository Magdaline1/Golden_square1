# Single-Method Programs Design Recipe


## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO


## 2. Design the Method Signature

Name of method: check_text(string)
returns a boolean value
possible issues? =>


## 3. Create Examples as Tests

check_text(#TODO list) => true
check_text(#TODO) => true
check_text(things #todo) => false
check_text(#TO DO list) => false
check_text(To do: get groceries) => false

## 4. Implement the Behaviour



