class Category < ActiveRecord::Base
  has_many :categorized_assistants
  has_many :photo_assistants, through: :categorized_assistants
end
