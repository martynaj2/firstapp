class AuthorComment < ActiveRecord::Base
  belongs_to :author
  belongs_to :comment
end
