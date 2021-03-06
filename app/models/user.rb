class User < ApplicationRecord
    has_secure_password
    has_many :movies
    has_many :categories, through: :movies

    validates :username, presence: true, uniqueness: true
    validates :username, length: { minimum: 2 }
    validates :password, presence: true
    validates :password_confirmation, presence: true
end
