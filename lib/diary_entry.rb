class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @furthest_word_read = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return 0 if @contents.empty?
    return @contents.count(" ") + 1 #because words are separated by spaces, we've counted the spaces and added 1 to get the number of words!
  end

  def reading_time(wpm)
      fail "Reading speed must be above 0" unless wpm.positive?
      return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
      fail "Reading speed must be above 0" unless wpm.positive?
      words_we_can_read = wpm * minutes
      start_from = @furthest_word_read
      end_at = @furthest_word_read + words_we_can_read
      word_list = words[start_from, end_at]
      if end_at >= count_words
          @furthest_word_read = 0
      else
          @furthest_word_read = end_at
      end
      return word_list.join(" ")
  end
end

private

def words
  @contents.split(" ")
end