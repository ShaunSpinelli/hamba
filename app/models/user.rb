class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        
  has_many :jobs
  has_many :moves
  after_create :send_welcome


  
  def send_welcome
    UserMailer.send_signup_email(self).deliver
  end
end
