class CreateLiquors < ActiveRecord::Migration
  def change
    create_table :liquors do |t|
      t.string :name
      t.string :name_kana
      t.integer :brewery_id
      t.integer :brand_id
      t.integer :category_id
      t.integer :updated_seq

      t.timestamps
    end
  end
end
