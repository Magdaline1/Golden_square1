require 'diary'
require 'diary_entry'

describe 'integration' do
    it "lists all entries added" do
        diary_entry = Diary.new
        entry_1 = DiaryEntry.new("title", "contents")
        entry_2 = DiaryEntry.new("title2", "contents2")
        diary_entry.add(entry_1)
        diary_entry.add(entry_2)
        expect(diary_entry.all).to eq [entry_1, entry_2]
    end

    describe 'count words method' do
        it "counts all the words in the diary entry's contents" do 
            diary_entry = Diary.new
            entry_1 = DiaryEntry.new("title", "contents")
            entry_2 = DiaryEntry.new("title2", "other contents")
            diary_entry.add(entry_1)
            diary_entry.add(entry_2)
            expect(diary_entry.count_words).to eq 3 #3 because of the 3 word contents in line 17 & 18
        end
    end

    describe 'reading time method' do
        it "fails where wpm is 0" do
            diary_entry = Diary.new
            entry_1 = DiaryEntry.new("title", "contents")
            diary_entry.add(entry_1)
            expect { diary_entry.reading_time(0) }.to raise_error("WPM must be positive")
        end

        it "calculates the reading time for all entries" do
            diary_entry = Diary.new
            entry_1 = DiaryEntry.new("title", "contents")
            entry_2 = DiaryEntry.new("title2", "other contents")
            diary_entry.add(entry_1)
            diary_entry.add(entry_2)
            expect(diary_entry.reading_time(2)).to eq 2
        end
    end

    describe 'reading time' do
        context "where there is only one entry & its readable in the time" do
            it "should return that entry" do
                diary_entry = Diary.new
                entry_1 = DiaryEntry.new("title", "my contents")
                diary_entry.add(entry_1)
                result = diary_entry.find_best_entry_for_reading_time(2, 1)
                expect(result).to eq entry_1
            end
        end
    end

    

end