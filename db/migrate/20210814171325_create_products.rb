class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :Name
      t.string :Color
      t.string :Category
      t.integer :Size
      t.integer :Price
      t.string :Store

      t.timestamps
    end
  end
end
