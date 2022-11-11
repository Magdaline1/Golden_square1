require 'todo_list'

describe TodoList do
    it "returns an empty list if no tasks are added" do
        todo_list = TodoList.new
        expect(todo_list.list).to eq []
    end

    it "adds a task to the list" do
        todo_list = TodoList.new
        todo_list.add("Groceries")
        expect(todo_list.list).to eq ["Groceries"]
    end

    it "adds multiple tasks to the list" do
        todo_list = TodoList.new
        todo_list.add("Groceries")
        todo_list.add("Cook")
        todo_list.add("Wash dishes")
        expect(todo_list.list).to eq ["Groceries", "Cook", "Wash dishes"]
    end

    it "removes a task once complete" do
        todo_list = TodoList.new
        todo_list.add("Groceries")
        todo_list.add("Cook")
        todo_list.complete("Groceries")
        expect(todo_list.list).to eq ["Cook"]
    end

    context "throws an error when we try to complete or remove a non existent task" do
        it "fails" do
            todo_list = TodoList.new
            todo_list.add("Groceries")
            todo_list.add("Cook")
            expect{ todo_list.complete("Buy groceries") }.to raise_error "No such task"
        end
    end
end

