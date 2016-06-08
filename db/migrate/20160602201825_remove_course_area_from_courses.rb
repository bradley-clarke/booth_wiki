class RemoveCourseAreaFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :course_area
  end
end
