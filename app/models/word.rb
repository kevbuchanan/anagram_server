class Word < ActiveRecord::Base
  
  def canonical
    self.word.split(//).sort.join
  end


  def anagrams
    Word.where()
  end
end
