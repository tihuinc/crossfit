class Wod < ActiveRecord::Base
  # constants
  TIME = "time".freeze
  AMRAP = "AMRAP".freeze
  WOD_TYPES = [TIME, AMRAP]

  # associations
  has_many :workout_records
end
