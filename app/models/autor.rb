class Autor < ActiveRecord::Base
  has_one :post
end
