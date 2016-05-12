class CategorizedAssistant < ActiveRecord::Base
  belongs_to :category
  belongs_to :assistant
end
