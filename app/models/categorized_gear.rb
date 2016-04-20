class CategorizedGear < ActiveRecord::Base
  has_many :assistants
  has_many :gears
end
