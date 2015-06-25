class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable, :omniauthable,
         omniauth_providers: [:google_oauth2]

  MEMBER_TYPES = [
    'Entrepreneur',
    'Event coordinator/Chapter owner',
    'Partner/Sponsor'
  ]

  # before_save :create_bequester_profile

  validates_presence_of :first_name, :last_name #, :city, :member_type
  validates_acceptance_of :t_and_cs

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    unless user
      user = User.create(
        first_name: data['first_name'],
        last_name: data['last_name'],
        email: data['email'],
        password: Devise.friendly_token[0, 10]
      )
    end

    user
  end

  # def create_bequester_profile
  #   bequester = BEQUESTER::Api::User.new(user)
  #   self.bequester_uid = bequester.sign_up
  # end
end
