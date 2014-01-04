class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.integer :language_id
      t.integer :master_word_id

      t.timestamps
    end
  end
end
