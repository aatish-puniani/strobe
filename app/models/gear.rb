class Gear < ActiveRecord::Base
  has_many :categorized_gears
  has_many :assistants, through: :categorized_gears
end
