#Unit testing peer classes

class SecretDiary
    def initialize(diary) # diary is an instance of Diary
      @unlock = false
      @diary = diary
    end
  
    def read
        fail "Go away!" if @unlock == false
        return @diary.read
    end
  
    def lock
      @unlock = false
    end
  
    def unlock
        @unlock = true
    end
  end