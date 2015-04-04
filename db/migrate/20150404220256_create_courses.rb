class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :course_code
      t.integer :credits
      t.string :level
      t.string :grading

      t.timestamps null: false
    end
  end
end
