class Job < ActiveRecord::Base
  belongs_to :occupation
  belongs_to :city
  belongs_to :category
  belongs_to :photographer
  has_many :categorized_skills
  has_many :skills, through: :categorized_skills
end
