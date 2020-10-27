class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true, format: { with: /[^@\s]+@[^@\s\.]+\.[^@\.\s]+/,
    message: "Invalid email" }
end
