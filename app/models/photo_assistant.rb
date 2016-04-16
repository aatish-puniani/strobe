class PhotoAssistant < ActiveRecord::Base
  belongs_to :occupation
  belongs_to :city
  has_many :categorized_assistants
  has_many :categories, through: :categorized_assistants
  has_many :images
  has_many :categorized_gears
  has_many :gears, through: :categorized_gears
end
