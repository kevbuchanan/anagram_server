module WordParser
  def self.load(file)
    File.open(file).each_line do |word|
      Word.create(word: word.chomp)
    end
  end
end

file = File.expand_path('../words.txt', __FILE__)
WordParser.load(file)
