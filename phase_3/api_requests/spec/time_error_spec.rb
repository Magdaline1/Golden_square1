require 'time_error'

describe TimeError do
    it "Returns difference between server time and the time on this computer" do
        fake_requester = double :requester 
        allow(fake_requester).to receive(:get).with( 
            URI("https://worldtimeapi.org/api/ip")
        ).and_return('{"abbreviation":"GMT","client_ip":"140.228.54.77","datetime":"2022-11-20T21:40:05.494873+00:00","day_of_week":0,"day_of_year":324,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1668980405,"utc_datetime":"2022-11-20T21:40:05.494873+00:00","utc_offset":"+00:00","week_number":46}')
        time = Time.new(2022, 11, 20, 21, 40, 05)
        time_error = TimeError.new(fake_requester)
        expect(time_error.error(time)).to eq 0.494873
    end
end