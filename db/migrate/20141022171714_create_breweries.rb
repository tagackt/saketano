class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :name_kana
      t.string :postal_code
      t.integer :prefecture_id
      t.string :address
      t.string :homepage
      t.string :latitude
      t.string :longitude
      t.boolean :registerd
      t.integer :updated_seq

      t.timestamps
    end
  end
end
