class RemoveAutorIdFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :autor_id, :integer, index: true
  end
end
