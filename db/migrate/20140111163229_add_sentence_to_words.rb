class AddSentenceToWords < ActiveRecord::Migration
  def change
    add_column :words, :sentence, :boolean, :default => false
  end
end
