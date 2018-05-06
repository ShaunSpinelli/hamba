class User < ApplicationRecord
  rolify
  #resourcify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        
  has_many :jobs
  has_many :moves
  after_create :send_welcome
  mount_uploader :profile_pic, ProfileImageUploader

  def full_name
    "#{first_name} #{last_name}"
  end
  
  def send_welcome
    UserMailer.send_signup_email(self).deliver
  end


  def can_destroy?(job)
    self.has_role? :admin || job.user == self   
  end

  def can_update?(job)
    job.user == self  
  end

  def can_destroy_user?(user)
    self.has_role? :admin || user == self   
  end

end
