def caesar_cipher(text, num)
    new_string = text.gsub(/\S/) do |s| 
        s = s.ord + num
        if (65..90) === s || (97..122) === s
            s = s.chr
        else
            s = s - 26
            s.chr
        end
    end 
    puts new_string 
end

puts caesar_cipher("AZ az", 1)