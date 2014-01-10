class CreateUsersWords < ActiveRecord::Migration
  def up
  	create_table :users_words, :id => false do |t|
  		t.integer :user_id
  		t.integer :word_id
  	end

  	add_index :users_words, :user_id
  	add_index :users_words, :word_id
  end

  def down
  end
end
