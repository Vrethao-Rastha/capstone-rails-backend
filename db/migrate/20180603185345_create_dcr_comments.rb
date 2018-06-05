class CreateDcrComments < ActiveRecord::Migration[5.2]
  def change
    create_table :dcr_comments do |t|
      t.string :name
      t.text :comment
      t.string :avatar
      t.timestamps
    end
  end
end
