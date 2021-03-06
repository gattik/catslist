class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :image
      t.integer :price
      t.string :email

      t.timestamps
    end
  end
end
