class ChangeColumnTypePasswordHash < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :password_hash, :string
  end
end
