def make_snippet(string)
    str = string.split(" ")
    if str.length <= 5
        return string
    else
        str = string.split(" ")
        str_five_words = str[0,5].join(" ")
        return str_five_words + " ..."
    end
end