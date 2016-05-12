class Occupation < ActiveRecord::Base
  has_many :assistants
  has_many :photographers
  has_many :jobs
end
