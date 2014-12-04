class ChangeColumnToImpressions < ActiveRecord::Migration
  def change
    change_column :impressions, :total_score, :float, default: 0
  end
end