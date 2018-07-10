class Author < ActiveRecord::database
  validates :name, :surname, presence: true
  validates :name, length: { minimum: 2 }
  validates :surname, length: { minimum: 5}

  has_many :comments
end
