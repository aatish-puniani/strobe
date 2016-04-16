class CategorizedGear < ActiveRecord::Base
  has_many :photo_assistants
  has_many :gears
end
