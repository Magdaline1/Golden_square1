class GrammarStats
    def initialize
        @passed_stats = 0
        @failed_stats = 0
    end
  
    def check(text)
        if text[0] == text[0].capitalize && text[-1].count("!?.") > 0
            @passed_stats += 1
            return true
        else
            @failed_stats += 1
            return false
        end
    end
  
    def percentage_good
        percentage = (@passed_stats.to_f / (@passed_stats + @failed_stats)) * 100
        return percentage
    end
end
