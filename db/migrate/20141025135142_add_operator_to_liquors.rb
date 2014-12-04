class AddOperatorToLiquors < ActiveRecord::Migration
  def change
    add_column :liquors, :created_by, :integer
    add_column :liquors, :updated_by, :integer
  end
end
