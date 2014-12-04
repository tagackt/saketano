class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :name_kana
      t.integer :brewery_id
      t.integer :updated_seq

      t.timestamps
    end
  end
end
