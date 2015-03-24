def substrings(phrase, dict)
    substrings = Hash.new
    
    dict.each do |entry|
        matches = phrase.downcase.scan(entry).length
        substrings[entry] = matches if matches > 0
    end
    
    puts substrings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)