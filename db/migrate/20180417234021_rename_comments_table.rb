class RenameCommentsTable < ActiveRecord::Migration[5.2]
  def up
    rename_table :comments_tables, :comments
  end

  def down
    rename_table :comments, :comments_tables
  end
end
