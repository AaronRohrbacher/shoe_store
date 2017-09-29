class Front < ActiveRecord::Base
  belongs_to :brand
  belongs_to :shoe
  belongs_to :store
end
