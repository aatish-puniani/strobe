class CategorizedAssistant < ActiveRecord::Base
  has_many :assistants
  has_many :categories
end
