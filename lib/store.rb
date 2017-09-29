class Store < ActiveRecord::Base
  has_many :fronts
  has_many :shoes, through: :fronts
  has_many :brands, through: :fronts

  before_save(:upcase_name)
private

def upcase_name
  self.store=(store().split.map(&:capitalize).join(' '))
end

end
