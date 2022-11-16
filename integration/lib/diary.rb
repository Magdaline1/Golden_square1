class Diary
    def initialize
        @entries = []
        @tasks = []
    end
  
    def add_entry(entry) # entry is a string
      @entries << entry
    end
  
    def add_todo(task) # todo is a string
        @tasks << task
    end
  
    def show_todo
     return @tasks
    end
  
    def all
      return @entries
    end
  
    def readable_entries(wpm, reading_time) # wpm and reading_time are integers
        return 
      # returns entries that I can read in the time given
    end
  
  end