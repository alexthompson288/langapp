class AddLanguagesToSentences < ActiveRecord::Migration
  def change
    add_column :sentences, :spanish, :text
    add_column :sentences, :french, :text
    add_column :sentences, :german, :text
    add_column :sentences, :mandarin, :text
    add_column :sentences, :russian, :text
    add_column :sentences, :arabic, :text
  end
end
