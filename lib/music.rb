class Music
    def initialize
        @songs = []
    end

    def add(track)
        @songs.push(track)
    end

    def list
        listed = "Songs I've listened to: "
        listed += @songs.join(", ")
        return listed
    end

end
