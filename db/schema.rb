# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150404181822) do

  create_table "ceq_reports", force: :cascade do |t|
    t.integer  "registered_students"
    t.integer  "passed_students"
    t.integer  "answers_all"
    t.integer  "answers_male"
    t.integer  "answers_female"
    t.integer  "hours_lectures"
    t.integer  "hours_group"
    t.integer  "hours_labs"
    t.integer  "hours_supervisor"
    t.integer  "hours_self_study"
    t.integer  "lecture_presence_30"
    t.integer  "lecture_presence_70"
    t.integer  "lecture_presence_100"
    t.integer  "good_teaching_score"
    t.integer  "good_teaching_sd"
    t.integer  "clear_goals_score"
    t.integer  "clear_goals_sd"
    t.integer  "assessment_score"
    t.integer  "assessment_sd"
    t.integer  "workload_score"
    t.integer  "workload_sd"
    t.integer  "important_score"
    t.integer  "important_sd"
    t.integer  "satisfied_score"
    t.integer  "satisfied_sd"
    t.text     "comments_by_students"
    t.text     "comments_by_course_leader"
    t.text     "comments_by_programme_director"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

end
