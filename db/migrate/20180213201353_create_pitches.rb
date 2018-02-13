class CreatePitches < ActiveRecord::Migration[5.1]
  def change
    create_table :pitches do |t|
      t.string :brand_1
      t.string :brand_2

      t.timestamps
    end
  end
end
