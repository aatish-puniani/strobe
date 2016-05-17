class Category < ActiveRecord::Base
  has_many :categorized_assistants
  has_many :assistants, through: :categorized_assistants
end
