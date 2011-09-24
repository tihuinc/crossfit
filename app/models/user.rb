class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  # associations
  has_many :workout_records
  has_many :authentications
  
  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token['extra']['user_hash']
    if user = User.find_by_email(data["email"])
      user
    else # Create a user with a stub password. 
      user =User.new(:email => data["email"], :password => Devise.friendly_token[0,20]) 
      user.authentications.build(:provider => access_token['provider'], :uid => access_token['uid'], :token =>(access_token['credentials']['token'] ))
      user.save
    end
  end
  
  def self.find_for_twitter_oauth(access_token, signed_in_resource=nil)
    data = access_token['extra']['user_hash']
    data["email"]="eggie5@gmail.com"
    if user = User.find_by_email(data["email"])
      user.authentications.build(:provider => access_token['provider'], :uid => access_token['uid'], :token =>(access_token['credentials']['token'] ))
      user.save
      user
    else # Create a user with a stub password. 
      user =User.new(:email => data["email"], :password => Devise.friendly_token[0,20]) 
      user.authentications.build(:provider => access_token['provider'], :uid => access_token['uid'], :token =>(access_token['credentials']['token'] ))
      user.save
    end
  end
  
  def self.new_with_session(params, session)
     super.tap do |user|
       if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["user_hash"]
         user.email = data["email"]
       end
     end
   end
end
