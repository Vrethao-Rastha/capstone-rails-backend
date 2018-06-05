class CreatePiperComments < ActiveRecord::Migration[5.2]
  def change
    create_table :piper_comments do |t|
      t.string :name
      t.text :comment
      t.string :avatar
      t.timestamps
    end
  end
end
