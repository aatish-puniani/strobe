class City < ActiveRecord::Base
  has_many :assistants
  has_many :photographers
end
