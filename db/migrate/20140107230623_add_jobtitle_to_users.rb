class AddJobtitleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :jobtitle, :string
    add_column :users, :nationality, :string
    add_column :users, :city, :string
  end
end
