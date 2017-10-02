def substrings(word, dic)
    y = Hash[dic.map { |key| [key, 0] } ]
    z = word.split(" ")

    z.each do |w|
        y.each do |key, value|
            if w.include? key
                y[key] = value += 1
            end
        end
    end
    
    puts y
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
text = "my milkshake low low"

substrings(text, dictionary)