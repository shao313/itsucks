class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :complaint
  validates :user_id, :presence => true
  validates :complaint_id, :presence => true
  validates :body, :presence => true

end
