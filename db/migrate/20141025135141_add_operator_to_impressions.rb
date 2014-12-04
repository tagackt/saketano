class AddOperatorToImpressions < ActiveRecord::Migration
  def change
    add_column :impressions, :created_by, :integer
    add_column :impressions, :updated_by, :integer
  end
end
