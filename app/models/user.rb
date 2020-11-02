class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: true, format: { with: /[^@\s]+@[^@\s\.]+\.[^@\.\s]+/,
  message: "Invalid email" }
  after_create :send_welcome_email

  def password_required?
    false
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
