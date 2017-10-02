def substrings(word, dic)
    y = Hash[dic.map { |key| [key, 0] } ]
    
    y.each do |key, value|
        if word.include? key
            y[key] = value + 1
        end
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
text = "below downstairs"

substrings(text, dictionary)