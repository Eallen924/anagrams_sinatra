get '/' do

  erb :index
end

post '/anagram' do
  @input_word = params[:word]
  anagram_array = Word.anagramify(@input_word)
  @anagrams = anagram_array.delete_if { |word| word.word == @input_word }
  erb :index
end
