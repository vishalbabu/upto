class AddArchivedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :archived, :boolean
  end
end
