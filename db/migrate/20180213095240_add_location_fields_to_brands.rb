class AddLocationFieldsToBrands < ActiveRecord::Migration[5.1]
  def change
    add_column :brands, :longitude, :float
    add_column :brands, :latitude, :float
  end
end
