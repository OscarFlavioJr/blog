class User < ApplicationRecord
    has_many: post, dependent: destroy

    has_secure_password

    validates :name, presence: true
    validates :email, presence: true, uniquiness: true, format: Devise.email_regexp
    validates :password, length: {minimum: 6}
end
