class Suck < ActiveRecord::Base
  belongs_to :complaint
  belongs_to :user
  validates :user_id, :presence => true, :uniqueness => {:scope => :complaint_id}
  validates :photo_id, :presence => true 

end
