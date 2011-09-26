class WorkoutFundamental < ActiveRecord::Base
  belongs_to :workout
  has_one :fundamental
end
