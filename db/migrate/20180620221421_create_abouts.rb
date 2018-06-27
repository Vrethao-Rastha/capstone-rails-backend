class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :user
      t.text :about
      t.string :avatar

      t.timestamps
    end
  end
end
