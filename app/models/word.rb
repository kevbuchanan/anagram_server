class Word < ActiveRecord::Base
  def generate_canonical
    self.word.split(//).sort.join.downcase
  end

  def anagrams
    Word.where("canonical = ?", self.canonical).map(&:word)
  end
end
