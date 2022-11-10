def check_text(string)
    new_string = string.split(" ")
    if new_string.include?("#TODO")
        return true
    else
        return false
    end
end