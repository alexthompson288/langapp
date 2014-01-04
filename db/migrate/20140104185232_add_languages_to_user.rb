class AddLanguagesToUser < ActiveRecord::Migration
  def change
    add_column :users, :mothertongue_id, :integer
    add_column :users, :targettongue_id, :integer
  end
end
