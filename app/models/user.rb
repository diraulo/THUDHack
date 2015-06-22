class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable # and :omniauthable

  MEMBER_TYPES = ['Entrepreneur', 'Event coordinator/Chapter owner',
                  'Administrator', 'Partner/Sponsor']
  validates_presence_of :first_name, :last_name, :city, :member_type
  validates_acceptance_of :t_and_cs
end
