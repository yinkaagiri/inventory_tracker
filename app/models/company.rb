class Company < ActiveRecord::Base
  has_many :products, dependent: :destroy
  validates :name, uniqueness: :true, presence: :true
end
