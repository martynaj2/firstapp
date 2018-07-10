class Post < ActiveRecord::Base
  validates :title, :content, :autor, presence: true
  validates :title, uniqueness: true
  validates :title, length: { maximum: 80 }
  validates :content, length: { in: 10..500 }


end
