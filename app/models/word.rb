class Word < ActiveRecord::Base

  def self.anagramify(input_word)
    sorted_word = input_word.split('').sort.join('')
    self.where("sorted_word = ?", sorted_word)
  end
end
