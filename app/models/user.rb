class User < ApplicationRecord
    validates :email,:username,:password presence: true
    validates :password, length: {minimum: 6}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, length: { maximum: 255}, format: {with: VALID_EMAIL_REGEX}
    validates :name, length: { maximum: 50}
end
