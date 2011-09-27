ActiveAdmin.register WorkoutRecord do

  index do
    column :user_id do  |record|
      link_to record.user.email, [:admin, record.user]
    end
    column :time
    column :workout
    column :rounds
    column :max_reps
    column :scaled
    column :detail
    column :created_at
    column :updated_at
    default_actions
  end
  
end
