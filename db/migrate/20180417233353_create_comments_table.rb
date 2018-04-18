class CreateCommentsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :comments_tables do |t|
      t.string :comment
      t.integer :post_id
      t.integer :user_id 
    end
  end
end
