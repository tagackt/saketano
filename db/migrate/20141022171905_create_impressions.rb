class CreateImpressions < ActiveRecord::Migration
  def change
    create_table :impressions do |t|
      t.integer :brewery_id
      t.integer :brand_id
      t.integer :liquor_id
      t.integer :user_id
      t.float :total_score
      t.text :note
      t.integer :updated_seq

      t.timestamps
    end
  end
end
