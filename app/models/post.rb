class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  validates :title, uniqueness: true
  validates :title, length: { maximum: 80 }
  validates :content, length: { in: 10..500 }

  scope :old, -> {where('created_at < ?', 40.minutes.ago)}

  belongs_to :autor
  # before_create :annotate_autor
  #
  # def annotate_autor
  #   self.autor = "#{self.autor} from Binarapps"
  # end
end
