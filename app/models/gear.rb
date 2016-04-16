class Gear < ActiveRecord::Base
  has_many :categorized_gears
  has_many :photo_assistants, through: :categorized_gears
end
