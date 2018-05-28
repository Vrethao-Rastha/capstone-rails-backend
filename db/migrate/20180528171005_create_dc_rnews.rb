class CreateDcRnews < ActiveRecord::Migration[5.2]
  def change
    create_table :dc_rnews do |t|
      t.string :title
      t.text :body
      t.string :picture

      t.timestamps
    end
  end
end
