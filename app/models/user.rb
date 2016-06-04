class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments
  has_many :photos
  has_many :complaints
  has_many :sucks
  has_many :sucked_companies, :through => :suck, :source => :company
  validates :username, :presence => true, :uniqueness => true
  
end
