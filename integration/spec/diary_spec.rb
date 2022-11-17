require 'diary'

describe 'diary' do
    it 'returns an empty list' do
        diary = Diary.new
        diary.all
        expect(diary.all).to eq []
    end

    it 'adds entries to the list' do
        diary = Diary.new
        diary.add_entry("entry_1")
        diary.add_entry("entry_2")
        diary.all
        expect(diary.all).to eq ["entry_1", "entry_2"]
    end

    it 'returns entries that can be read in the time given' do
        diary = Diary.new
        diary.add_entry("short entry")
        diary.add_entry("This is a longer entry")
        diary.add_entry("one " * 100)
        expect(diary.readable_entries(10, 1)).to eq ["short entry", "This is a longer entry"]
    end
end