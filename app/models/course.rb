class Course < ActiveRecord::Base

validates :title, :presence => true, :uniqueness => true
validates :course_number, :presence => true, :uniqueness => true, length: { is: 5 }, numericality: { only_integer: true }

has_many :reviews
belongs_to :user

end
