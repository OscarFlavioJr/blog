class User < ApplicationRecord
    has_many :posts, dependent: :destroy

    has_secure_password

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: Devise.email_regexp
    validates :password, length: {minimum: 6}
    validates :isadmin, presence: true
end
