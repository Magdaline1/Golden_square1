# Single-Method Programs Design Recipe


## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.


## 2. Design the Method Signature

* The name of the method: *'reading_time'*
* What parameters it takes, their names and data types: *(number_of_words), an integer*
* What it returns and the data type of that value: *returns a string*
* Any other side effects it might have: *possible confusion with numbers once minutes turn to hours*


## 3. Create Examples as Tests

reading_time(200) => "1 minute"
reading_time(400) => "2 minutes"
reading_time(600) => "3 minutes"

## 4. Implement the Behaviour

def reading_time(nums_of_words)
  time = nums_of_words / 200.0
  return "#{time} minutes"
end
