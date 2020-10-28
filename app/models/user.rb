class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true, format: { with: /[^@\s]+@[^@\s\.]+\.[^@\.\s]+/,
  message: "Invalid email" }
  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.welcome(user: self).deliver_now
  end
end
