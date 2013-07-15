def parse_words(filename)
  File.readlines(filename).each do |word|
    chomped = word.chomp
    sorted_word = chomped.downcase.split('').sort.join('')
    Word.create(word: chomped, sorted_word: sorted_word)
  end
end

file = "app/words.txt"
parse_words(file)
