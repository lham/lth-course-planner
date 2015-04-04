class CoursePlanInstance < ActiveRecord::Base
  belongs_to :course_plan
  has_many :course_instances
end
