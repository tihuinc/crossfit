class Authentication < ActiveRecord::Base
  attr_accessible :user_id, :provider, :uid, :token
  belongs_to :user
end
