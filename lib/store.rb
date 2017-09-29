class Store < ActiveRecord::Base
  has_many :fronts
  has_many :shoes, through: :fronts
  has_many :brands, through: :fronts
end
