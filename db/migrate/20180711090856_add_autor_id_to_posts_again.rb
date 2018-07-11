class AddAutorIdToPostsAgain < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :autor_id, :integer, index: true
  end
end
