class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :category
      t.string :location
      t.string :logo_url
    end
  end
end