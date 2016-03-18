class Company < ActiveRecord::Base
  has_many :products
  validates :name, uniqueness: :true, presence: :true
end
