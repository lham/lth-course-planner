class CreateCourseInstances < ActiveRecord::Migration
  def change
    create_table :course_instances do |t|
      t.string :year
      t.string :education_board
      t.string :department
      t.boolean :suitable_exchange
      t.string :language
      t.boolean :required_knowledge
      t.boolean :assumed_knowledge
      t.boolean :limited_participants
      t.string :mandatory
      t.integer :allowed_from_year
      t.integer :included_in_year
      t.integer :study_period

      t.references :course, index: true, foreign_key: true
      t.references :course_plan_instance, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
