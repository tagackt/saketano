class AddImageToImpressions < ActiveRecord::Migration
  def change
    add_column :impressions, :image, :string
  end
end
