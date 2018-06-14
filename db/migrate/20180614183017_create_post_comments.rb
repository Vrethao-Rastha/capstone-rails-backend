class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|
      t.string :name
      t.text :comment
      t.string :avatar
      t.string :commentId

      t.timestamps
    end
  end
end
