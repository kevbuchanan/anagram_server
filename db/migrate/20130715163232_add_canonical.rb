class AddCanonical < ActiveRecord::Migration
  def change
    add_column :words, :canonical, :string
    Word.find_each { |word| word.update_attribute(:canonical, word.generate_canonical) }
  end
end
