def make_snippet(str)
    number_of_words = str.split.length
    return str if number_of_words < 6

    # Returns the first 5 words from the string and adds ' ...' to the end of it
    str.split[0,5].join(" ") + " ..."
end