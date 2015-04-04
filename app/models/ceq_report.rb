class CeqReport < ActiveRecord::Base
  validates 'registered_students',  presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'passed_students',      presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'answers_all',          presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'answers_male',         presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'answers_female',       presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'hours_lectures',       presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'hours_group',          presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'hours_labs',           presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'hours_supervisor',     presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'hours_self_study',     presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'lecture_presence_30',  presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'lecture_presence_70',  presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'lecture_presence_100', presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'good_teaching_score',  presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'good_teaching_sd',     presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'clear_goals_score',    presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'clear_goals_sd',       presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'assessment_score',     presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'assessment_sd',        presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'workload_score',       presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'workload_sd',          presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'important_score',      presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'important_sd',         presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'satisfied_score',      presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates 'satisfied_sd',         presence: true, numericality: { greater_than_or_equal_to: 0 }
end
