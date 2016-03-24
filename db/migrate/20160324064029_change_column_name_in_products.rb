class ChangeColumnNameInProducts < ActiveRecord::Migration
  def change
    rename_column :products, :vendor_id, :vendor
  end
end
