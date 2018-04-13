class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :message
      t.string :author
      t.string :user_id

      t.timestamps
    end
  end
end
