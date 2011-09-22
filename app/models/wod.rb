class Wod < ActiveRecord::Base
  TIME = "time".freeze
  AMRAP = "AMRAP".freeze
  WOD_TYPES = [TIME, AMRAP]
end
