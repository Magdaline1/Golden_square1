require 'diary'
require 'diary_entry'

describe 'Diary' do
    it "has an empty list of entries" do
        diary_entry = Diary.new
        expect(diary_entry.all).to eq []
    end

    it "adds an entry to the list" do
        diary_entry = Diary.new
        entry_1 = DiaryEntry.new("title", "my contents")
        diary_entry.add(entry_1)
        expect(diary_entry.all).to eq [entry_1]
    end

    describe @count_words do
        it "returns the number of words in all diary entries" do
            diary_entry = Diary.new
            entry_1 = DiaryEntry.new("title", "my contents")
            diary_entry.add(entry_1)
            expect(diary_entry.count_words).to eq 2
        end

        it "has a word count of 0" do
            diary_entry = Diary.new
            expect(diary_entry.count_words).to eq 0
        end
    end
end