class AddCompanyIdToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :company, index: true, foreign_key: true
  end
end
