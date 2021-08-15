class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :Name
      t.string :Street
      t.integer :Number
      t.string :ZipCode
      t.string :Country
      t.string :Products

      t.timestamps
    end
  end
end
