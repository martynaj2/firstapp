class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  validates :title, uniqueness: true
  validates :title, length: { maximum: 80 }
  validates :content, length: { in: 10..500 }

  scope :old, -> {where('created_at < ?', 40.minutes.ago)}
  has_many :autor_posts
  has_many :autors, through: :autor_posts
  # before_create :annotate_autor
  #
  # def annotate_autor
  #   self.autor = "#{self.autor} from Binarapps"
  # end
end
