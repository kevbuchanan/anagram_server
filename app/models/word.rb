class Word < ActiveRecord::Base
  def generate_canonical
    self.word.split(//).sort.join
  end

  def anagrams
    Word.where("canonical = ?", self.canonical)
  end
end
