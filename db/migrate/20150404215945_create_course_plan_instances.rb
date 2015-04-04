class CreateCoursePlanInstances < ActiveRecord::Migration
  def change
    create_table :course_plan_instances do |t|
      t.references :course_plan, index: true, foreign_key: true
      t.string :year

      t.timestamps null: false
    end
  end
end
