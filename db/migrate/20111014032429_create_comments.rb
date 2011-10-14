class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :display_name
      t.text :body
      t.string :website

      t.timestamps
    end
  end
end
