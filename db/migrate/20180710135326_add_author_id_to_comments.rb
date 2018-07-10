class AddAuthorIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :author_id, :integer, index: true
  end
end
