class CreateCoursePlans < ActiveRecord::Migration
  def change
    create_table :course_plans do |t|
      t.references :programme, index: true, foreign_key: true
      t.string :name
      t.string :abbr
      t.string :type

      t.timestamps null: false
    end
  end
end
