class CreateAuthorComments < ActiveRecord::Migration[5.2]
  def change
    create_table :author_comments do |t|
      t.integer :author_id, index: true
      t.integer :comment_id, index: true
    end
  end
end
