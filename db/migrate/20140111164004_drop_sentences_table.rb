class DropSentencesTable < ActiveRecord::Migration
  def up
  	drop_table :sentences
  end

  def down
  	create_table :sentences do |t|
      t.text :sentence
      t.integer :language_id
      t.integer :master_sentence_id

      t.timestamps
  	end
  end
end
