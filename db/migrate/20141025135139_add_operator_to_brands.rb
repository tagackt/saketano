class AddOperatorToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :created_by, :integer
    add_column :brands, :updated_by, :integer
  end
end
