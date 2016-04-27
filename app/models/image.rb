class Image < ActiveRecord::Base
  belongs_to :assistant
  belongs_to :photographers
end
