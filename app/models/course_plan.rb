class CoursePlan < ActiveRecord::Base
  belongs_to :programme
  has_many :course_plan_instances
end
