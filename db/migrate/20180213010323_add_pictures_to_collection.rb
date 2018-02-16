class AddPicturesToCollection < ActiveRecord::Migration[5.1]
  def change
    add_column :collections, :pictures, :integer
    add_index :collections, :pictures
  end
end
