class AddOperatorToBreweries < ActiveRecord::Migration
  def change
    add_column :breweries, :created_by, :integer
    add_column :breweries, :updated_by, :integer
  end
end
