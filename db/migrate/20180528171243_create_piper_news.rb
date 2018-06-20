class CreatePiperNews < ActiveRecord::Migration[5.2]
  def change
    create_table :piper_news do |t|
      t.text :question
      t.text :answer
      t.string :picture

      t.timestamps
    end
  end
end
