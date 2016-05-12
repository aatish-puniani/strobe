class CategorizedSkill < ActiveRecord::Base
  has_many :assistants
  has_many :skills
end