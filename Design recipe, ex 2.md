# Single-Method Programs Design Recipe


## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.


## 2. Design the Method Signature

* The name of the method: *'grammer_checker'*
* What parameters it takes, their names and data types: *(string), a string*
* What it returns and the data type of that value: *boolean value*
* Any other side effects it might have: *N/A*


## 3. Create Examples as Tests

grammar_checker("HELLO WORLD") => false
grammar_checker("hello world.") => false
grammar_checker("Hello world!") => true
grammar_checker("Hello world.") => true
grammar_checker("") => false

## 4. Implement the Behaviour

def grammar_checker(string)
  if string[0] != string[0].capitalize
    return false
  end
end
