class Shoe < ActiveRecord::Base
  has_many :fronts
  has_many :stores, through: :fronts
  has_many :brands, through: :fronts
end
