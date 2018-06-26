class CreateMainPostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :main_post_comments do |t|
      t.belongs_to :main_story_comment, index: true
      t.string :name
      t.text :comment
      t.string :avatar
      t.string :storyId
      t.integer :main_story_comment_id

      t.timestamps
    end
  end
end
