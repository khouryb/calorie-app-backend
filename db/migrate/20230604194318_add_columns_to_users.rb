class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
    add_column :users, :dob, :date
    add_column :users, :height, :integer
    add_column :users, :weight, :float
    add_column :users, :sex, :string
    add_column :users, :activity_level, :integer
  end
end
