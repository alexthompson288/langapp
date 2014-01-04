class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.text :sentence
      t.integer :language_id
      t.integer :master_sentence_id

      t.timestamps
    end
  end
end
