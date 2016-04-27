class Photographer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :occupation
  belongs_to :city
  has_many :images
  has_many :categorized_gears
  has_many :gears, through: :categorized_gears
end
