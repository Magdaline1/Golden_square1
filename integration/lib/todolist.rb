class TodoList
    def initialize
        @list = []
    end
  
    def tasks
      return @list
    end
  
    def add(task) 
      @list << task
    end
  end