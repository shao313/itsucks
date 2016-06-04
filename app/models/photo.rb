class Photo < ActiveRecord::Base
  belongs_to :complaint, :class_name => "Complaint", :foreign_key => "complaint_id"
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  validates :complaint_id, :presence => true
  validates :user_id, :presence => true
  validates :image, :presence => true
  
end
