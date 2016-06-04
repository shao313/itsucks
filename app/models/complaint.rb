class Complaint < ActiveRecord::Base
belongs_to :user, :class_name => "User", :foreign_key => "user_id"
belongs_to :company, :class_name => "Company", :foreign_key => "company_id"
has_many :comments, :class_name => "Comment", :foreign_key => "complaint_id"
has_many :photos, :class_name => "Photo", :foreign_key => "complaint_id"
has_many :sucks, :class_name => "Suck", :foreign_key => "complaint_id"
validates :company_id, :presence => true
validates :user_id, :presence => true
validates :caption, :presence => true, :uniqueness => {:scope => :company_id, :user_id}
validates :body, :presence => true
end
