class Indexes < ActiveRecord::Migration
  def up
    add_index :posts, :author_id
    add_index :comments, :post_id
  end

  def down
    remove_index :posts, :author_id
    remove_index :comments, :post_id
  end
end
