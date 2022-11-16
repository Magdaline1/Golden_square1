require 'todolist'

describe 'todolist' do
    it 'saves a list of tasks' do
        todo_list = TodoList.new
        todo_list.tasks
        expect(todo_list.tasks).to eq []
    end

    it 'adds a task to the list' do
        todo_list = TodoList.new
        todo_list.add("groceries")
        todo_list.add("do dishes")
        todo_list.tasks
        expect(todo_list.tasks).to eq ["groceries", "do dishes"]
    end
end