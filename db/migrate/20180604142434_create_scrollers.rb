class CreateScrollers < ActiveRecord::Migration[5.2]
  def change
    create_table :scrollers do |t|
      t.string :pic
      t.timestamps
    end
  end
end
