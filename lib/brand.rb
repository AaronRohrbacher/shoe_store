class Brand < ActiveRecord::Base
  has_many :fronts
  has_many :shoes, through: :fronts
  has_many :stores, through: :fronts

  before_save(:upcase_name)
private

  def upcase_name
    self.brand=(brand().split.map(&:capitalize).join(' '))
  end
end
