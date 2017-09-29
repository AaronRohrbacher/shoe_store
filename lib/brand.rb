class Brand < ActiveRecord::Base
  has_many :fronts
  has_many :shoes, through: :fronts
  has_many :stores, through: :fronts
end
