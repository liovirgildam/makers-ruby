def count_words(str)
    raise 'Input must be a string' unless str.is_a? String    
    str.split.length
end