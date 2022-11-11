# Single-Method Programs Design Recipe


## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


## 2. Design the Method Signature

- Name of method: Music
- Doesn't take any parameters
- Returns a string which states tracks that have been listened to.


## 3. Create Examples as Tests

music.add("Happy") => "Songs I've listened to: Happy"
music.add("Love") => "Songs I've listened to: Love"
music.add("Happy, Love") => "Songs I've listened to: Happy, Love"

## 4. Implement the Behaviour
