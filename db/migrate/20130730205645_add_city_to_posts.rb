class AddCityToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :city_id, :integer
  	remove_column :posts, :location, :string
  end
end
