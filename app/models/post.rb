class Post < ApplicationRecord
  belongs_to :user


  validates  :text, presence: true
  validates :title, presence: true
end
