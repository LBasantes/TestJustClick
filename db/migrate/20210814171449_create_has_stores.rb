class CreateHasStores < ActiveRecord::Migration[6.1]
  def change
    create_table :has_stores do |t|
      t.string :Product
      t.string :Store

      t.timestamps
    end
  end
end
