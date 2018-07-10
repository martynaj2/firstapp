class Comment < ActiveRecord::Base
  validates :body, :author, presence: true
  validates :body, length: { maximum: 180 }

  belongs_to :author
end
