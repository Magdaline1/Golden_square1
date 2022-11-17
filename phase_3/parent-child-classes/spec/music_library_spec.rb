require 'music_library'

describe MusicLibrary do
    it 'adds a track to the library' do
        library = MusicLibrary.new
        track_1 = double :fake_track
        track_2 = double :fake_track 
        library.add(track_1)
        library.add(track_2)
        expect(library.all).to eq [track_1, track_2]
    end

    it 'returns a list of tracks that match the keyword' do
        library = MusicLibrary.new
        track_1 = double :fake_track, matches?: true
        track_2 = double :fake_track, matches?: false 
        library.add(track_1)
        library.add(track_2)
        expect(library.search("two")).to eq [track_1]
    end
end