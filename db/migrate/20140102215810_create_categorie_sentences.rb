class CreateCategorieSentences < ActiveRecord::Migration
  def up
  	create_table :categories_sentences, :id => false do |t|
  		t.integer :category_id
  		t.integer :sentence_id
  	end

  	add_index :categories_sentences, :category_id
  	add_index :categories_sentences, :sentence_id
  end

  def down
  end
end
