require 'diary_entry'

describe DiaryEntry do
    it "allows user to enter contents" do
        entry = DiaryEntry.new("my_title", "my_contents")
        expect(entry.title).to eq "my_title"
        expect(entry.contents).to eq "my_contents"
    end

    describe @count_words do
        it "allows user to count number of words in the contents as an integer" do
            entry = DiaryEntry.new("my_title", "some contents")
            expect(entry.count_words).to eq 2
        end

        it "return zero when the contents is empty" do
            entry = DiaryEntry.new("my_title", "")
            expect(entry.count_words).to eq 0
        end
    end

    describe "reading_time" do
        context "given 200 wpm speed" do
            it "returns the ceiling of number of minutes to read a text" do
                entry = DiaryEntry.new("my_title", "one " * 550)
                expect(entry.reading_time(200)).to eq 3
            end
        end
    end

    context "given a wpm of 0" do
        it "fails" do
          entry = DiaryEntry.new("my_title", "one two three")
          expect{ entry.reading_time(0) }.to raise_error "Reading speed must be above 0"
        end    
    end

    describe "reading_chunk" do
        context "with a contents readable within the given time" do
            it "returns the full contents" do
                entry = DiaryEntry.new("my_title", "one two three")
                chunk = entry.reading_chunk(200, 1)
                expect(chunk).to eq "one two three"
            end
        end

        context "given a wpm of 0" do
            it "fails" do
                entry = DiaryEntry.new("my_title", "one two three")
                expect{ entry.reading_chunk(0, 5) }.to raise_error "Reading speed must be above 0"    
            end
        end

        context "with a contents unreadable within the given time" do
            it "returns a readable chunk" do
                entry = DiaryEntry.new("my_title", "one two three")
                chunk = entry.reading_chunk(2, 1)
                expect(chunk).to eq "one two"
            end

            it "returns the next chunk, next time we are asked" do
                entry = DiaryEntry.new("my_title", "one two three")
                entry.reading_chunk(2, 1)
                chunk = entry.reading_chunk(2, 1)
                expect(chunk).to eq "three"
            end

            it "restarts after reading the whole contents" do
                entry = DiaryEntry.new("my_title", "one two three")
                entry.reading_chunk(2, 1)
                entry.reading_chunk(2, 1)
                chunk = entry.reading_chunk(2, 1)
                expect(chunk).to eq "one two"
            end

            it "restarts if it finishes exactly on the end" do
                entry = DiaryEntry.new("my_title", "one two three")
                entry.reading_chunk(2, 1)
                entry.reading_chunk(1, 1)
                chunk = entry.reading_chunk(2, 1)
                expect(chunk).to eq "one two"
            end
        end
    end
end

