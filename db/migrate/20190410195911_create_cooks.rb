class CreateCooks < ActiveRecord::Migration[5.2]
  def change
    create_table :cooks do |t|
      t.string :name
      t.string :cuisine
      t.string :city
      t.timestamps
    end
  end
end
