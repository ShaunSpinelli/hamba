class Move < ApplicationRecord
  belongs_to :user
  belongs_to :job

  after_create :send_notification
  after_update :send_acceptance
  def send_notification
    UserMailer.send_job_notification_email(self).deliver
  end

  def send_acceptance
    UserMailer.send_job_confirmation_email(self).deliver
  end
  





end
