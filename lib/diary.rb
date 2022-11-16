class Diary
    def initialize
        @entries = []
    end
  
    def add(entry)
        @entries.push(entry)
    end
  
    def all
      return @entries
    end
  
    def count_words
        return @entries.sum(&:count_words) #this allows sum to iterate over all entries & call on count words method. then adds up all results
    end
  
    def reading_time(wpm)
      fail "WPM must be positive" unless wpm.positive?
      return (count_words / wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
          return @entries.first 
    end
  end