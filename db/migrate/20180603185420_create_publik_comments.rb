class CreatePublikComments < ActiveRecord::Migration[5.2]
  def change
    create_table :publik_comments do |t|
      t.string :name
      t.text :comment
      t.string :avatar
      t.string :storyId
      t.timestamps
    end
  end
end
