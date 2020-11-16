class Post < ApplicationRecord
  validates :image,:subject,:text,presence: true
end
