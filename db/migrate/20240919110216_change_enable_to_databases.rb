class ChangeEnableToDatabases < ActiveRecord::Migration[7.2]
  def up
    remove_column :databases, :enabled
    add_column :databases, :enabled, :boolean, default: false
  end
  
  def down
    change_column :databases, :enabled, :string, default: f
  end
end
