class CreateContentusers < ActiveRecord::Migration
  def change
    create_table :contentusers do |t|
      t.integer :user_id
      t.integer :word_id

      t.timestamps
    end
  end
end
