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
      readable_entries = []
      @entries.each do |words|
        number_of_words = words.split(" ").length
        if number_of_words <= reading_time * wpm
          readable_entries << words
        end
      end
      return readable_entries
      # returns entries that I can read in the time given
    end
  end