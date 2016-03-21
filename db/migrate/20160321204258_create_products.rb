class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :inventory
      t.string :price
      t.references :vendor_id, index: true, foreign_key: true
    end
  end
end
