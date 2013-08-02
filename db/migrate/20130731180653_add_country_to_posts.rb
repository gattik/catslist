class AddCountryToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :country_id, :integer
  end
end
