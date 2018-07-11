class Autor < ActiveRecord::Base
  validates :name, :surname, presence: true
  validates :name, length: { minimum: 2 }
  validates :surname, length: { minimum: 5}

  # has_many :autor_posts
  # has_many :posts, through: :autor_posts

  has_many :posts
end
