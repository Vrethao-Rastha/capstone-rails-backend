class CreatePiperNews < ActiveRecord::Migration[5.2]
  def change
    create_table :piper_news do |t|
      t.string :title
      t.text :body
      t.string :picture

      t.timestamps
    end
  end
end
