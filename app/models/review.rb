class Review < ActiveRecord::Base
  validates :review, :presence => true
  validates :course_id, :presence => true
  validates :professor_id, :presence => true

  belongs_to :user
  belongs_to :course
  belongs_to :professor

end
