require 'password_checker'

describe PasswordChecker do
    it "checks the length of password" do
        password = PasswordChecker.new
        result = password.check("mypassword")
        expect(result).to eq true
    end

    it "fails if password is less than 8 characters" do
        password = PasswordChecker.new
        expect{password.check("pass")}.to raise_error "Invalid password, must be 8+ characters."
    end

    it "fails if password is intergers only" do
        password = PasswordChecker.new
        expect{password.check(1234)}.to raise_error(NoMethodError)
    end
end