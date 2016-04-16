class CategorizedAssistant < ActiveRecord::Base
  has_many :photo_assistants
  has_many :categories
end
