class Skill < ActiveRecord::Base
  has_many :categorized_skills
  has_many :assistants, through: :categorized_skills
  has_many :jobs, through: :categorized_skills
end
