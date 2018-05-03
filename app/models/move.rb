class Move < ApplicationRecord
  belongs_to :user
  belongs_to :job

  after_create :send_notification

  def send_notification
    UserMailer.send_job_notification_email(self).deliver
  end
  





end
