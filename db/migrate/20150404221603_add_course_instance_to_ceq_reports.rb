class AddCourseInstanceToCeqReports < ActiveRecord::Migration
  def change
    add_column :ceq_reports, :course_instance_id, :integer
  end
end
