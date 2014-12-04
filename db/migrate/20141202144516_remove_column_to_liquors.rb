class RemoveColumnToLiquors < ActiveRecord::Migration
  def change
    remove_column :liquors, :brand_name, :string
  end
end
