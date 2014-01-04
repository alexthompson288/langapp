class CreateCategoriesWords < ActiveRecord::Migration
  def up
  	create_table :categories_words, :id => false do |t|
  		t.integer :category_id
  		t.integer :word_id
  	end

  	add_index :categories_words, :category_id
  	add_index :categories_words, :word_id
  end

  def down
  end
end
