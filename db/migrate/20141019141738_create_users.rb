class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :sex
      t.date :birthday
      t.integer :birth_prefecture_id
      t.integer :current_prefecture_id

      t.timestamps
    end
  end
end
