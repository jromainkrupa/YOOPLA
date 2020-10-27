class User < ApplicationRecord
  validates :email, presence: true, format: { with: /[^@\s]+@[^@\s\.]+\.[^@\.\s]+/,
                                              message: 'Invalid email' }

  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end
end
