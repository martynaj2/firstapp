class Autor < ActiveRecord::Base
  validates :name, :surname, presence: true
  validates :name, length: { minimum: 2 }
  validates :surname, length: { minimum: 2}
  has_many :posts
  # has_many :autor_posts
  # has_many :posts, through: :autor_posts

  scope :old, ->{ where('age > 30')}
  scope :young, ->{ where('age < 20')}
  before_create :default_age

# nie musimy pisac return bo bedzie automatycznie zwrocona
  def fullname
    "#{name} #{surname}"
  end


  private

  def default_age
    self.age = 25 unless age
  end

end
