class TodoList
    def initialize
        @listed = []
    end

    def add (task)
        @listed.push(task)
    end

    def list
        return @listed
    end

    def complete(task)
        fail "No such task" unless @listed.include? task
        @listed.delete(task)
    end
end
