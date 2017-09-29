class Brand < ActiveRecord::Base
  has_many :fronts
  has_many :shoes, through: :fronts
  has_many :stores, through: :fronts

  validates :brand, presence: true, uniqueness: {case_sensitive: false}, length: {maximum: 100}
  validates :price, presence: true

  before_save(:upcase_name)
private

  def upcase_name
    self.brand=(brand().split.map(&:capitalize).join(' '))
  end
end
