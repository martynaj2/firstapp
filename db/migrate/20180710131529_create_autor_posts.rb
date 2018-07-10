class CreateAutorPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :autor_posts do |t|
      t.integer :autor_id, index: true
      t.integer :post_id, index: true
    end
  end
end
