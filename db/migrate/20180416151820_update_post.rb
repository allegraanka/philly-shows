class UpdatePost < ActiveRecord::Migration[5.2]

  def up
    change_column("posts", "user_id", :integer)
  end

  def down
    change_column("posts", "user_id", :string)
    delete_column("posts", "author")
  end

end
