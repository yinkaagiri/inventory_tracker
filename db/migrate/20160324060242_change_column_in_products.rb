class ChangeColumnInProducts < ActiveRecord::Migration
  def change
    change_column :products, :vendor_id, 'varchar USING CAST(vendor_id AS varchar)'
  end
end
