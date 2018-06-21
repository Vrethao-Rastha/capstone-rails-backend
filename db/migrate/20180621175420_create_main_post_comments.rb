class CreateMainPostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :main_post_comments do |t|
      t.string :name
      t.text :comment
      t.string :avatar
      t.string :postId
      t.string :storyId

      t.timestamps
    end
  end
end
