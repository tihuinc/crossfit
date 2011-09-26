class Workout < ActiveRecord::Base
  # constants
  TIME = "time".freeze
  AMRAP = "AMRAP".freeze
  WORKOUT_TYPES = [TIME, AMRAP]

  # associations
  has_many :workout_records
  has_many :workout_fundamentals
end
