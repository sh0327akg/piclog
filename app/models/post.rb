class Post < ApplicationRecord
  validates :image,:subject,:text,presence: true
  belongs_to :user
end
