class CourseInstance < ActiveRecord::Base
  belongs_to :course
  belongs_to :course_plan_instance
  has_one :ceq_report
end
