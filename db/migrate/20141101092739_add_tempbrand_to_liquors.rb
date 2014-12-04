class AddTempbrandToLiquors < ActiveRecord::Migration
  def change
    add_column :liquors, :brand_name, :string
  end
end
