class AlterPosts < ActiveRecord::Migration[5.2]

  def up
    change_column("posts", "message", :string, :limit => 150)
  end

  def down
    change_column("posts", "message", :string)
  end

end
