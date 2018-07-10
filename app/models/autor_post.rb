class AutorPost < ActiveRecord::Base
  belongs_to :autor
  belongs_to :post
end
