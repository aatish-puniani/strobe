class CategorizedImage < ActiveRecord::Base
  belongs_to :image
  belongs_to :assistant
end
