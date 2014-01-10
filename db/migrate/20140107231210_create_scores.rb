class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :number
      t.integer :user_id
      t.integer :language_id

      t.timestamps
    end
  end
end
