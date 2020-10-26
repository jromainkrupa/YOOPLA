class PreUser < ApplicationRecord
    validates :email, presence: true, format: { with: /[^@\s]+@[^@\s\.]+\.[^@\.\s]+/,
    message: "Please enter a valide email" }
end
