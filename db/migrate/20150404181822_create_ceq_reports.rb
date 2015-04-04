class CreateCeqReports < ActiveRecord::Migration
  def change
    create_table :ceq_reports do |t|
      t.integer :registered_students
      t.integer :passed_students
      t.integer :answers_all
      t.integer :answers_male
      t.integer :answers_female

      t.integer :hours_lectures
      t.integer :hours_group
      t.integer :hours_labs
      t.integer :hours_supervisor
      t.integer :hours_self_study

      t.integer :lecture_presence_30
      t.integer :lecture_presence_70
      t.integer :lecture_presence_100

      t.integer :good_teaching_score
      t.integer :good_teaching_sd
      t.integer :clear_goals_score
      t.integer :clear_goals_sd
      t.integer :assessment_score
      t.integer :assessment_sd
      t.integer :workload_score
      t.integer :workload_sd
      t.integer :important_score
      t.integer :important_sd
      t.integer :satisfied_score
      t.integer :satisfied_sd

      t.text :comments_by_students
      t.text :comments_by_course_leader
      t.text :comments_by_programme_director

      t.timestamps null: false
    end
  end
end
