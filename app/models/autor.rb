class Autor < ActiveRecord::Base
  has_many :autor_posts
  has_many :posts, through: :autor_posts
end
