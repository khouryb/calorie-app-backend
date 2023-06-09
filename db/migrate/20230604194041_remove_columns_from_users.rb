class RemoveColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :username, :string
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :dob, :string
    remove_column :users, :height, :string
    remove_column :users, :weight, :string
    remove_column :users, :sex, :string
    remove_column :users, :activity_level, :string
  end
end
