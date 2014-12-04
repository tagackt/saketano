class ChangeColumnToUsers < ActiveRecord::Migration
  def change
    change_column :users, :sex, :integer
  end
end
