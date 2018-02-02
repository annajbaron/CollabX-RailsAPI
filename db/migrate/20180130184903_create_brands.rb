class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :founded
      t.string :hq

      t.timestamps
    end
  end
end
