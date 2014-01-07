class AddLanguagesToWord < ActiveRecord::Migration
  def change
    add_column :words, :spanish, :string
    add_column :words, :french, :string
    add_column :words, :german, :string
    add_column :words, :mandarin, :string
    add_column :words, :russian, :string
    add_column :words, :arabic, :string
  end
end
