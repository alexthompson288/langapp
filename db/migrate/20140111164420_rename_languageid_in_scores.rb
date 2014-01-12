class RenameLanguageidInScores < ActiveRecord::Migration
  def up
  	rename_column :scores, :language_id, :mothertongue_id
  	add_column :scores, :targettongue_id, :integer
  	add_column :scores, :game_id, :integer
  end

  def down
  end
end
