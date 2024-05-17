def substrings(word, dictionary)
  # makes the word downcase so it can be case-insensitive
  word.downcase!

  #iterates through each substring in the dictionary
  dictionary.each_with_object(Hash.new(0)) do |substring, occurrences|
    #keeps count of how often each substring occurs in the dictionary before storing it in the hash
    occurrence = word.scan(/#{substring.downcase}/).length
    #stores the substring and number of occurrences in the hash unless the substring does not occur
    occurrences[substring] += occurrence unless occurrence.zero?
  end
end
