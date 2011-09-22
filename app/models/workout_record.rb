class WorkoutRecord < ActiveRecord::Base
  belongs_to :user
  belongs_to :wod
end
