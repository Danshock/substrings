def substrings(words, dictionary)
  output = Hash.new(0) #new hash with a default value of 0

    substrings = words.downcase.split() #input's split into substrings & makes it case insensitive
      puts substrings

        substrings.each do |substring| #comparing substring to ...
          dictionary.each do |word|    #each dictionary word
            if substring.gsub(/[[:punct:]]/, '').include?(word) #removing punctuation before comparing ...
              output[word] += 1                                 # track matches by dictionary word with output hash
            end
          end
        end

        puts output
      end

      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      substrings("Howdy partner, sit down! How's it going?", dictionary)
