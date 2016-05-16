class Assistant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  belongs_to :occupation
  belongs_to :city
  has_many :categorized_assistants
  has_many :categories, through: :categorized_assistants
  has_many :categorized_images
  has_many :images, through: :categorized_images
  has_many :categorized_skills
  has_many :skills, through: :categorized_skills
  validates :name, presence: true
  validates :phone_number, presence: true                      
  validates :address, presence: true                 
  validates :day_rate, presence: true                  
  validates :worked_with, presence: true                     
  validates :url, presence: true             
  validates :bio, presence: true             
  validates :facebook, presence: true                  
  validates :twitter, presence: true                 
  validates :instagram, presence: true                   
  validates :blog, presence: true             
  validates :years_exp, presence: true                   
  validates :occupation_id, presence: true                       
  validates :car, presence: true             
  validates :city_id, presence: true
end




                       