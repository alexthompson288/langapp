class AddCustomToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :custom, :boolean, :default => 'false'
  end
end
