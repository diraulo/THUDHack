class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable,:omniauthable, :omniauth_providers => [:google_oauth2,:linkedin,:twitter]

  MEMBER_TYPES = ['Entrepreneur', 'Event coordinator/Chapter owner',
                  'Administrator', 'Partner/Sponsor']
  validates_presence_of :first_name, :last_name, :city, :member_type
  validates_acceptance_of :t_and_cs


  def self.from_omniauth(access_token)
      data = access_token.info
      user = User.where(:email => data["email"]).first
      unless user
          user = User.create(name: data["name"],
             email: data["email"],
             password: Devise.friendly_token[0,20]
          )
      end
      user
      
  end
end

