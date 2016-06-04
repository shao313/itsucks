class Company < ActiveRecord::Base
has_many :complaints, :class_name => "Complaint", :foreign_key => "company_id"
has_many :haters, :through => :suck, :source => :user
validates :company_name, :presence => true
end
