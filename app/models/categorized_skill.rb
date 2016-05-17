class CategorizedSkill < ActiveRecord::Base
  belongs_to :assistant
  belongs_to :job
  belongs_to :skill
end