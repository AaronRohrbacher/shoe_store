class Store < ActiveRecord::Base
  has_many :fronts
  has_many :shoes, through: :fronts
  has_many :brands, through: :fronts

  validates :store, presence: true, uniqueness: {case_sensitive: false}, length: {maximum: 100}

  before_save(:upcase_name)
private

  def upcase_name
    self.store=(store().split.map(&:capitalize).join(' '))
  end
end
